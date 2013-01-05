class Event

  class << self
    def create
      Event.new
    end
  end

  def persited?
    true
  end
end
