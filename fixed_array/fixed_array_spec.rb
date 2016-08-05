require_relative 'fixed_array'

describe 'FixedArray' do
  let(:fixed_array) { FixedArray.new(3) }
  let(:array) {fixed_array.array}

  context '#new' do
    it 'creates and instance of the fixed array class' do
      expect(fixed_array).to be_an_instance_of(FixedArray)
    end

    it 'has an array attribute' do
      expect(array).to be_an(Array)
    end

    it 'creates a new array of a specified size' do
      expect(array.length).to be(3)
    end
  end

  context '#get' do
    before(:example) do
      array.replace(['hi', 'hello', 'bonjour', 'salut'])
    end

    it 'retrieves a value at a specified index' do
      expect(fixed_array.get(1)).to eq 'hello'
    end

    it 'raises an OutOfBoundsError if a non-existent index is given' do
      expect { fixed_array.get(9) }.to raise_error(OutOfBoundsException)
    end
  end

  context '#set' do
    before(:example) do
      fixed_array.set(1,"nope!")
    end
    it 'inserts a value at a specified index' do
      expect(array[1]).to eq 'nope!'
    end

    it 'raises an OutOfBoundsError if a non-existent index is given' do
      expect { fixed_array.set(9, "I'll break!") }.to raise_error(OutOfBoundsException)
    end
  end

end