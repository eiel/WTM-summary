# -*- coding: utf-8 -*-

module ApplicationHelper
  WDAYS = %W|日 月 火 水 木 金 土|

  def event_term(event)
    start_at = event.start_at
    end_at = event.end_at

    date = start_at.strftime("%Y-%m-%d")
    wday = WDAYS[start_at.wday]
    time_format = "%H:%M"
    start = start_at.strftime(time_format)
    end_time = end_at.strftime(time_format)
    "#{date}(#{wday}) #{start}〜#{end_time}"
  end

  def event_path(event)
    "events/#{event.year}/#{event.month}"
  end
end
