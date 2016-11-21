class Event < ApplicationRecord
  has_many :entries, dependent: :destroy
  has_many :ballots, dependent: :destroy

end
