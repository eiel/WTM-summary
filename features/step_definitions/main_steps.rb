# -*- coding: utf-8 -*-

前提 /^勉強会の情報が登録されてる$/ do
  Event.create
end

もし /^"(.*?)"に訪問する$/ do |path|
  visit(path)
end

ならば /^最新の勉強会の情報が表示されている$/ do
  expect( page ).to have_content('第52回「WEB TOUCH MEETING」')
  expect( page ).to have_content('Webに活かす映像制作術')
  expect( page ).to have_content('INDeVisual 浅野')
  expect( page ).to have_content('あなたのつくったWEBサイト、生きてますか？')
  expect( page ).to have_content('大林')
  expect( page ).to have_content('自由過ぎるCMS、concrete5を上手く使うためのお作法')
  expect( page ).to have_content('コンクリートファイブ ジャパン株式会社 佐々木多生')
end
