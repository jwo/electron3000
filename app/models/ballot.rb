class Ballot < ApplicationRecord
  include ActiveModel::Transitions
  has_secure_token

  validates :phone_number, presence: true, format: /[0-9]9/
  validates :first_place_side, :second_place_side, :third_place_side, :first_place_dessert, :second_place_dessert, :third_place_dessert, presence: true,  on: :update

  belongs_to :event, touch: true

  belongs_to :first_place_side, class_name: 'Entry'
  belongs_to :second_place_side, class_name: 'Entry'
  belongs_to :third_place_side, class_name: 'Entry'

  belongs_to :first_place_dessert, class_name: 'Entry'
  belongs_to :second_place_dessert, class_name: 'Entry'
  belongs_to :third_place_dessert, class_name: 'Entry'

  validate on: :update do
    len = [first_place_side, second_place_side, third_place_side].uniq.length
    if len != 3
      errors.add(:first_place_side, "It looks like some sides are voted for twice. No good!")
    end
  end

  validate on: :update do
    len = [first_place_dessert, second_place_dessert, third_place_dessert].uniq.length
    if len != 3
      errors.add(:first_place_dessert, "It looks like some desserts are voted for twice. No good!")
    end
  end


  state_machine auto_scopes: true do
    state :new_ballot
    state :complete

    event :cast do
      transitions to: :complete, from: :new_ballot
    end
  end
end
