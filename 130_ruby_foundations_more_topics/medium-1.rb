class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end
end