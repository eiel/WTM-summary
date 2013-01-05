# -*- coding: utf-8 -*-

前提 /^勉強会の情報が登録されてる$/ do
  Event.create
end

もし /^"(.*?)"に訪問する$/ do |path|
  visit(path)
end

ならば /^最新の勉強会の情報が表示されている$/ do
  expect( page ).to have_content('第53回「WEB TOUCH MEETING」')
end
