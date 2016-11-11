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
    it "returns nil if the list has nothing at the head" do
      expect(linked_list.head).to be nil
    end

    it "removes the node at the head of the list" do
      linked_list.insert_first('a')
      linked_list.insert_first('z')
      linked_list.remove_first
      expect(linked_list.head.element).to eq 'a'
    end

    it "sets the new head to the previous head's next node" do
      linked_list.insert_first('b')
      linked_list.insert_first('a')
      linked_list.insert_first('z')
      linked_list.remove_first
      expect(linked_list.head.next.element).to eq 'b'
    end
  end

  describe "#insert_last" do
    before(:each) do
      linked_list.insert_first('c')
      linked_list.insert_first('b')
      linked_list.insert_first('a')
    end

    it "finds the last node in the list to add to" do
      expect(linked_list.head.next.next.next).to be nil
    end

    it "appends a new node onto the end of the list" do
      linked_list.insert_last('d')
      expect(linked_list.head.next.next.next.element).to eq 'd'
    end
  end

  describe "#remove_last" do
    before(:each) do
      linked_list.insert_first('a')
      linked_list.insert_last('b')
      linked_list.insert_last('c')
      linked_list.insert_last('d')
      linked_list.insert_last('e')
    end

    it "finds the last node in the list to remove" do
      expect(linked_list.head.next.next.next.next.next).to be nil
    end

    it "removes the last node on the list" do
      linked_list.remove_last
      p linked_list.head.next.next.next.next
      expect(linked_list.head.next.next.next.next).to be nil
    end
  end
end