class Node

  attr_reader :node

  def initialize(element)
    @node = self.new(element)
  end

  def new(element)
    element
  end

  def insert_after(other_node)
    @node.next = self.new(other_node)
  end

  def remove_after
  end
end