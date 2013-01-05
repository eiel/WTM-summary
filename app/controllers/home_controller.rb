class HomeController < ApplicationController
  def index
    @event = Event.order(:number).reverse_order.first
  end
end
