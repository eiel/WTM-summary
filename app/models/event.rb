# -*- coding: utf-8 -*-
class Event < ActiveRecord::Base
  attr_accessible :number

  has_many :presentations

  class << self
    # year と month で find できるように上書きをする
    def find(year, month)
      month_start = DateTime.new(year.to_i, month.to_i)
      month_end = month_start.end_of_month
      if event = Event.where(start_at: month_start..month_end).first
        event
      else
        raise 'その月にイベントはありません。'
      end
    end

    def home
      order(:number).reverse_order
    end
  end
end
