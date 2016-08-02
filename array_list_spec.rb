require_relative 'array_list'

describe "ArrayList" do
  let(:array_list) { ArrayList.new(5) }
  let(:array) { array_list.array }

  context "new" do
    it "initializes a new instance with a readable array" do
      expect(array).to be_an Array
    end

    it "initializes the new instance with an array of a specified size" do
      expect(array.length).to be 5
    end
  end

  context "add" do
    it "adds an element to the end of the array list" do
      expect { array.add("end") }.to change{array.length}.by(1)
    end

    it "returns the newly added element" do
      expect(array.add("I'm last")).to be "I'm last"
    end
  end

end