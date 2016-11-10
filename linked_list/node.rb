class Node

  attr_reader :element, :next

  def initialize(element)
    @element = self.new(element)
    @next = nil
  end

  def new(element)
    element
  end

  def insert_after(other_node)
    @next = self.new(other_node)
  end

  def remove_after
    @next = nil
  end
end