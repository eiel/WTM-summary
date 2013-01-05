# -*- coding: utf-8 -*-
require 'spec_helper'

describe ApplicationHelper do
  describe '#event_term' do
    subject { helper.event_term event}

    context '第52回のイベントの時' do
      let(:event) { Fabricate :event_52 }
      it { should eq('2012-12-22(土) 18:00～21:00') }
    end

    context '第51回のイベントの時' do
      let(:event) { Fabricate :event, number: 51 }
      it { should eq('2012-10-21(日) 14:00～17:30') }
    end
  end
end
