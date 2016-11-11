require_relative 'node'

class LinkedList

  attr_reader :head

  def initialize
    self.new
  end

  def new
    @head = nil
  end

  def insert_first(element)
    previous_head = @head
    @head = Node.new(element)
    @head.insert_after(previous_head)
  end

  def remove_first
    previous_next = @head.next
    @head = previous_next
  end

  def insert_last(element)
    node_to_analyze = @head
    until node_to_analyze.next == nil
      node_to_analyze = node_to_analyze.next
    end
    node_to_analyze.insert_after(Node.new(element))
  end

  def remove_last
    node_to_analyze = @head
    until node_to_analyze.next.next == nil
      node_to_analyze = node_to_analyze.next
    end
    node_to_analyze.remove_after
  end
end