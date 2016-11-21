class Entry < ApplicationRecord
  belongs_to :event, touch: true
  attachment :photo, type: :image

  scope :sides, -> {where category: 'side'}
  scope :desserts, -> {where category: 'dessert'}

  def points
    @points ||= calc_points
  end

  def calc_points
    if category == 'side'
      side_votes_first * 3 + side_votes_second * 2 + side_votes_first
    elsif category == 'dessert'
      dessert_votes_first * 3 + dessert_votes_second * 2 + dessert_votes_first
    else
      0
    end
  end

  private

  def side_votes_first
    event.ballots.where(:first_place_side_id => id).count
  end

  def side_votes_second
    event.ballots.where(:second_place_side_id => id).count
  end

  def side_votes_third
    event.ballots.where(:third_place_side_id => id).count
  end

  def dessert_votes_first
    event.ballots.where(:first_place_dessert_id => id).count
  end

  def dessert_votes_second
    event.ballots.where(:second_place_dessert_id => id).count
  end

  def dessert_votes_third
    event.ballots.where(:third_place_dessert_id => id).count
  end
end
