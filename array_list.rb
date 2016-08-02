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

  def get(index)
    oob_throw(index)
    @array[index]
  end

  def set(index, element)
    oob_throw(index)
    @array[index] = element
    element
  end

  def oob_throw(index)
    raise OutOfBoundsException unless index < @array.length && @array[index] != nil
  end

end

class OutOfBoundsException < StandardError
  def initialize(msg = "Your index is out of bounds")
    super(msg)
  end
end