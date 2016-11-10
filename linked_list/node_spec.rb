require_relative 'node'

describe 'Node' do
  let(:text_node) { Node.new("Wassup") }
  let(:num_node) { Node.new(33) }

  describe '#new' do
    it 'initializes a new node with a text element' do
      expect(text_node.element).to eq "Wassup"
    end

    it 'initializes a new node with a number element' do
      expect(num_node.element).to eq 33
    end
  end

  describe '#insert_after' do
    it 'links a new text node to a previous node' do
      text_node.insert_after(Node.new("Dude"))
      expect(text_node.next.element).to eq "Dude"
    end

    it 'links a new numerical node to a previous node' do
      num_node.insert_after(Node.new(55))
      expect(num_node.next.element).to eq 55
    end
  end

  describe "#remove_after" do
    it "removes a node's next text element" do
      text_node.insert_after(Node.new("Dude"))
      text_node.remove_after
      expect(text_node.next).to be nil
    end

    it "removes a node's next text element" do
      num_node.insert_after(Node.new(78))
      num_node.remove_after
      expect(num_node.next).to be nil
    end
  end

end