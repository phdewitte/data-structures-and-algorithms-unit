class ArrayList

  attr_reader :array

  def initialize(size)
    @array = self.new(size)
  end

  def new(size)
    Array.new(size)
  end



end