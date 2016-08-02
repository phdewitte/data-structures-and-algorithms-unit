class ArrayList

  attr_reader :array

  def initialize(size)
    @array = self.new(size)
  end

  def new(size)
    Array.new(size)
  end

  def add(element)
    @array.push(element)
    element
  end



  def oob_throw(index)
    raise OutOfBoundsException unless index < @array.length
  end

end

class OutOfBoundsException < StandardError
  def initialize(msg = "Your index is out of bounds")
    super(msg)
  end
end