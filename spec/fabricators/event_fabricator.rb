# -*- coding: utf-8 -*-
Fabricator(:event) do
  number 1
end

Fabricator(:event_52, from: :event) do
  number 52
  start_at DateTime.new(2012, 12, 22, 18, 00)
  end_at   DateTime.new(2012, 12, 22, 21, 00)
  after_create do |event|
    event.presentations.create( title: 'Webに活かす映像制作術',
                                speaker: 'INDeVisual 浅野')
    event.presentations.create( title: 'あなたのつくったWEBサイト、生きてますか？',
                               speaker: '大林')
    event.presentations.create( title: '自由過ぎるCMS、concrete5を上手く使うためのお作法',
                                speaker: 'コンクリートファイブ ジャパン株式会社 佐々木多生')
  end
end

Fabricator(:event_51, from: :event) do
  number 51
  start_at DateTime.new(2012, 10, 21, 14, 00)
  end_at   DateTime.new(2012, 10, 21, 17, 30)
end

Fabricator(:event_50, from: :event) do
  number 50
  start_at DateTime.new(2012, 9, 15, 19, 00)
  end_at   DateTime.new(2012, 9, 15, 22, 00)
  after_create do |event|
    event.presentations.create( title: 'SNS「github」で遊ぼう',
                                speaker: 'ひむら ともひこ')
  end
end
