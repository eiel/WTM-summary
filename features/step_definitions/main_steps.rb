# -*- coding: utf-8 -*-

前提 /^勉強会の情報が登録されてる$/ do
  Event.create
end

もし /^"(.*?)"に訪問する$/ do |path|
  visit(path)
end

ならば /^最新の勉強会の情報が表示されている$/ do
  pending # express the regexp above with the code you wish you had
end
