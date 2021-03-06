# -*- coding: utf-8 -*-

前提 /^第(\d+)回の勉強会の情報が登録されている$/ do |n|
  Fabricate "event_#{n}".to_sym
end

前提 /^イベントのデータがある$/ do
  step '第52回の勉強会の情報が登録されている'
  step '第51回の勉強会の情報が登録されている'
  step '第50回の勉強会の情報が登録されている'
end

もし /^"(.*?)"に訪問する$/ do |path|
  visit(path)
end

もし /^"(.*?)"をクリックする$/ do |name|
  click_on name
end

もし /^スピーカの情報を入力$/ do
  fill_in '名前', with: 'ひむひむ'
end

前提 /^管理者でログインしている$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  User.create!(email: email,
               password: password,
               password_confirmation: password,
               twitter_uid: User.admin_uids.first)

  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Sign in"
end

ならば /^過去のイベント情報が表示される$/ do
  expect( page ).to have_content('第52回 2012-12-22(土) 18:00〜21:00')
  expect( page ).to have_content('第51回 2012-10-21(日) 14:00〜17:30')
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
    expect( page ).to have_content('コンクリートファイブ ジャパン株式会社')
  when 51
    expect( page ).to have_content('第51回「WEB TOUCH MEETING」')
  else
    raise 'そんなの登録されてません。'
  end
end

ならば /^ひむらさんの詳細情報が表示される$/ do
  expect( page ).to have_css('.name', text: "ひむら ともひこ")
end

ならば /^西村さんの詳細情報が表示される$/ do
  expect( page ).to have_css('.name', text: "西村 誠")
end

ならば /^スピーカの詳細情報が表示される$/ do
  expect( page ).to have_content('ひむひむ')
end
