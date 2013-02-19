# -*- coding: utf-8 -*-
require 'spec_helper'

describe Speaker do
  describe 'Fabricate' do
    subject { Fabricate :speaker, name: 'ほげ ほげ太郎' }
    its(:name) { should eq('ほげ ほげ太郎') }
  end

  describe '#name' do
    subject { speaker.name }
    let(:speaker) { Fabricate :speaker }
    it { should eq('ほげ ほげ太郎') }
  end
end
