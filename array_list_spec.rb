require_relative 'array_list'

describe "ArrayList" do
  let(:array_list) { ArrayList.new(5) }
  let(:array) { array_list.array }

  context "#new" do
    it "initializes a new instance with a readable array" do
      expect(array).to be_an Array
    end

    it "initializes the new instance with an array of a specified size" do
      expect(array.length).to be 5
    end
  end

  context "#add" do
    it "adds an element to the array list" do
      expect { array_list.add("add one") }.to change{array.length}.by(1)
    end

    it "adds the new element to the end of the array list" do
      array_list.add("I'm last")
      expect(array.last).to eq "I'm last"
    end

    it "returns the newly added element" do
      expect(array_list.add("Return me")).to eq "Return me"
    end
  end

  context "#get" do
    before(:example) do
      array.replace(['hi', 'I\'m', 'just', 'killing', nil, 'time'])
    end

    it "retrieves an element at a given index within bounds of array size" do
      expect(array_list.get(2)).to eq 'just'
    end

    it "throws an OutOfBoundsException if the index is outside the array size" do
      expect { array_list.get(8) }.to raise_error(OutOfBoundsException)
    end

    it "throws an OutOfBoundsException if the index is nil" do
      expect { array_list.get(4) }.to raise_error(OutOfBoundsException)
    end
  end

end