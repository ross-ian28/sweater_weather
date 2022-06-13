class Photo
  attr_reader :id, :picture

  def initialize(data)
    @picture = data
  end
end
