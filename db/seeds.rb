Event.destroy_all
event = Event.where(name: "Test Event").first_or_create!(:date => Date.today)

10.times do

  e = event.entries.build
  e.name = Faker::Company.name
  e.category = ["side", "dessert"].sample
  e.remote_photo_url = Faker::Avatar.image e.name.parameterize, "800x800"
  e.save

end

side_entries = Entry.sides
dessert_entries = Entry.desserts

event.ballots.create! phone_number: "555-555-5555", 
              state: "complete",
              side_votes: side_entries.shuffle.take(3).map(&:id),
              dessert_votes: dessert_entries.shuffle.take(3).map(&:id)

event.ballots.create! phone_number: "666-666-6666",
              side_votes: [],
              dessert_votes: [],
              token: "the-token"
