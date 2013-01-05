# -*- coding: utf-8 -*-
class Event < ActiveRecord::Base
  attr_accessible :number

  has_many :presentations

  class << self
    def home
      order(:number).reverse_order
    end
  end
end
