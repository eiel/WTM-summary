class Event < ActiveRecord::Base
  attr_accessible :number

  has_many :presentations
end
