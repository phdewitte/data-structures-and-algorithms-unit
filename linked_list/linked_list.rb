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


end