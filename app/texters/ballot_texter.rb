class BallotTexter < Textris::Base
  default :from => ENV["TWILIO_FROM_NUMBER"]


  def welcome(ballot)
    @ballot = ballot
    text :to => "1#{@ballot.phone_number}"
  end
end
