class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.first
  end
end
