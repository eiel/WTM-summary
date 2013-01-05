class HomeController < ApplicationController
  def index
    @event = Event.home.first
  end
end
