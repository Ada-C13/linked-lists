require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    return @head = new_node
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil if @head.nil?
    return @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def add_last(data)

  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last

  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)

  end
end