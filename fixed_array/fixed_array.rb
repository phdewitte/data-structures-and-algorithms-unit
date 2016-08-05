class FixedArray

	attr_reader :array

	def initialize(size)
		@array = self.new(size)
	end

	def new(size)
		Array.new(size)
	end

	def get(index)
		oob_throw(index)
		return @array.at(index)
	end

	def set(index, element)
		oob_throw(index)
		@array.insert(index, element)
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

# p array = FixedArray.new(3)
# p three = array.get(1)
# p updated = array.set(2, "Hello.")