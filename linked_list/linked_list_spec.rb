require_relative 'node'
require_relative 'linked_list'

describe "LinkedList" do
  let(:linked_list) { LinkedList.new }
  let(:letter_list) { LinkedList.new('b') }
  let(:number_list) { LinkedList.new(1) }

  describe "#new" do
    it "initializes a new linked list" do
      expect(linked_list).to be_an_instance_of LinkedList
    end

    it "initialized a new linked list with a head that is a node" do
      expect(letter_list.head).to be_an_instance_of Node
    end

    it "initializes a new linked list with one text element as the head of the list" do
      expect(letter_list.head.element).to eq 'b'
    end

    it "initializes a new linked list with one numerical element as the head of the list" do
      expect(number_list.head.element).to eq 1
    end
  end

  describe "#insert_first" do
    it "assigns the head of the list to the passed in argument" do
      letter_list.insert_first('a')
      expect(letter_list.head.element).to eq 'a'
    end

    it "points the new head's next attribute to the previous head" do
      letter_list.insert_first('a')
      expect(letter_list.head.next.element).to eq 'b'
    end
  end

  describe "#remove_first"
end