class Node

  attr_reader :element, :next

  def initialize(element)
    self.new(element)
  end

  def new(element)
    @element = element
  end

  def insert_after(other_node)
    @next = self.new(other_node)
  end

  def remove_after
    @next = nil
  end
end