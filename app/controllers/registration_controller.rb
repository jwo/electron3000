class RegistrationController < ApplicationController

  def new
    @ballot = @event.ballots.build
  end

  def create
    @ballot = @event.ballots.build params.require(:ballot).permit(:phone_number)
    if @ballot.save
      BallotTexter.welcome(@ballot).deliver_later
      redirect_to check_text_path(token: @ballot.token)
    else
      render :new
    end

  end

  def check_text
    @ballot = Ballot.find_by token: params[:token]
  end

  def verify
    @ballot = Ballot.find_by token: params[:token]
    session[:token] = @ballot.token
    redirect_to new_vote_path
  end
end
