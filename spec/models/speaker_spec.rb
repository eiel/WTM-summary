# -*- coding: utf-8 -*-
require 'spec_helper'

describe Speaker do
  describe 'Fabricate' do
    subject { Fabricate :speaker, name: 'ほげ ほげ太郎' }
    its(:first_name) { should eq('ほげ太郎') }
    its(:last_name) { should eq('ほげ') }
  end

  describe '#name' do
    subject { speaker.name }
    let(:speaker) { Fabricate :speaker }
    it { should eq('ほげ ほげ太郎') }
  end
end
