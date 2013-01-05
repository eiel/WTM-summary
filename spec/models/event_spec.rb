# -*- coding: utf-8 -*-
require 'spec_helper'

describe Event do
  describe '.create' do
    subject { Event.create }
    it { should be_persisted }
  end

  describe 'Fabricate :event' do
    subject { Fabricate :event_52 }
    it { should be_persisted }
    its(:presentations) { should have(3).items }
  end

  describe '.home' do
    subject { Event.home }
    context '2件イベント' do
      before :each do
        Fabricate :event, number: 2
        Fabricate :event, number: 4
      end

      it { expect(subject.first.number).to eq(4) }
    end
  end

  describe '.find(year, month)' do
    subject { Event.find(year, month) }
    before :each do
      Fabricate :event_52
    end

    context 'year: 2012, month: 12' do
      let(:year) { '2012' }
      let(:month) { '12' }
      its(:number) { should eq(52) }
    end
  end
end
