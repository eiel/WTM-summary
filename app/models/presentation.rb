class Presentation < ActiveRecord::Base
  attr_accessible :speaker, :title

  belongs_to :event
  belongs_to :speaker
end
