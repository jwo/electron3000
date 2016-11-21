class VotesController < ApplicationController

  before_action do
    @ballot = Ballot.find_by token: session[:token]
    redirect_to new_ballot_path if @ballot.nil?
  end

  def new
  end

  def cast
    @ballot.attributes = params.require(:ballot).permit(:first_place_side_id, :second_place_side_id, :third_place_side_id, :first_place_dessert_id, :second_place_dessert_id, :third_place_dessert_id)
    if @ballot.valid? && @ballot.cast!
      redirect_to root_path
    else
      render :new
    end
  end
end
