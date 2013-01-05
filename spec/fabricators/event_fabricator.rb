# -*- coding: utf-8 -*-
Fabricator(:event) do
  number 1
end

Fabricator(:event_52, from: :event) do
  number 52
  after_create do |event|
    event.presentations.create( title: 'Webに活かす映像制作術',
                                speaker: 'INDeVisual 浅野')
    event.presentations.create( title: 'あなたのつくったWEBサイト、生きてますか？',
                               speaker: '大林')
    event.presentations.create( title: '自由過ぎるCMS、concrete5を上手く使うためのお作法',
                                speaker: 'コンクリートファイブ ジャパン株式会社 佐々木多生')
  end
end
