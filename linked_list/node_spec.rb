require_relative 'node'

describe 'Node' do
  let(:text_node) { Node.new("Wassup") }
  let(:num_node) { Node.new(33) }

  context '#new' do
    it 'initializes a new node with a text element' do
      expect(text_node.node).to eq "Wassup"
    end

    it 'initializes a new node with a number element' do
      expect(num_node.node).to eq 33
    end
  end

  xcontext '#insert_after' do
    it 'links a new node to a previous node' do

    end
  end

end