require 'spec_helper'

describe Event do
  describe '.create' do
    subject { Event.create }
    it { should be_persited }
  end
end
