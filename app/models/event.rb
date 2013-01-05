# -*- coding: utf-8 -*-
class Event < ActiveRecord::Base
  attr_accessible :number

  has_many :presentations

  class << self
    def home
      order(:number).reverse_order
    end
  end

  def start_at
    case number
    when 52
      DateTime.new(2012, 12, 22, 18, 00)
    when 51
      DateTime.new(2012, 10, 21, 14, 00)
    else
      raise '未対応よ'
    end
  end

  def end_at
    case number
    when 52
      DateTime.new(2012, 12, 22, 21, 00)
    when 51
      DateTime.new(2012, 10, 21, 17, 30)
    else
      raise '未対応よ'
    end
  end
end
