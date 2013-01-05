class Speaker < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  has_many :presentation

  def name
    [last_name, first_name].join(' ')
  end
end
