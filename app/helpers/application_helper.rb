# -*- coding: utf-8 -*-

module ApplicationHelper
  def event_term(event)
    case event.number
    when 52
      '2012-12-22(土) 18:00～21:00'
    when 51
      '2012-10-21(日) 14:00～17:30'
    else
      raise 'ちゃんと実装してないよ'
    end
  end
end
