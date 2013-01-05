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
end
