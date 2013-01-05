# -*- coding: utf-8 -*-

前提 /^第(\d+)回の勉強会の情報が登録されている$/ do |n|
  n = n.to_i
  case n
  when 52
    Fabricate :event_52
  when 51
    event = Event.create( number: 51 )
  else
    raise 'そんなデータないっす'
  end
end

前提 /^イベントのデータがある$/ do
  step '第52回の勉強会の情報が登録されている'
  step '第51回の勉強会の情報が登録されている'
end

もし /^"(.*?)"に訪問する$/ do |path|
  visit(path)
end

もし /^"(.*?)"をクリックする$/ do |name|
  click_link name
end

ならば /^過去のイベント情報が表示される$/ do
  pending # express the regexp above with the code you wish you had
end

ならば /^第(\d+)回の勉強会の情報が表示されている$/ do |n|
  n = n.to_i
  case n
  when 52
    expect( page ).to have_content('第52回「WEB TOUCH MEETING」')
    expect( page ).to have_content('Webに活かす映像制作術')
    expect( page ).to have_content('INDeVisual 浅野')
    expect( page ).to have_content('あなたのつくったWEBサイト、生きてますか？')
    expect( page ).to have_content('大林')
    expect( page ).to have_content('自由過ぎるCMS、concrete5を上手く使うためのお作法')
    expect( page ).to have_content('コンクリートファイブ ジャパン株式会社 佐々木多生')
  when 51
    expect( page ).to have_content('第51回「WEB TOUCH MEETING」')
  else
    raise 'そんなの登録されてません。'
  end
end
