class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action do
    @event = Event.order("date desc").first
  end


end
