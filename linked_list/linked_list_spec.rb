require_relative 'node'
require_relative 'linked_list'

describe "LinkedList" do
  let(:linked_list) { LinkedList.new }

  describe "#new" do
    it "initializes a new linked list" do
      expect(linked_list).to be_an_instance_of LinkedList
    end

    it "initializes a new linked list with a head that is nil" do
      expect(linked_list.head).to be nil
    end
  end

  describe "#insert_first" do
    before(:each) do
      linked_list.insert_first('b')
    end

    it "sets the head of the list to a new node element" do
      expect(linked_list.head).to be_an_instance_of Node
    end

    it "assigns the element of the head node to the passed argument" do
      expect(linked_list.head.element).to eq 'b'
    end

    it "points the new head's 'next' attribute to the previous head" do
      linked_list.insert_first('a')
      expect(linked_list.head.next.element).to eq 'b'
    end
  end

  describe "#remove_first" do
    # before(:each) do
    #   linked_list.insert_first('z')
    #   linked_list.insert_first('a')
    #   linked_list.remove_first
    # end

    it "returns nil if the list has nothing at the head" do
      expect(linked_list.head).to be nil
    end

  end
end