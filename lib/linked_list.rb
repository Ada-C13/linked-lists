require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ? O(1)
  # Space complexity - ? O(1) only creating one node
  def add_first(data) # creat a new node & assing it to @head
    @head = new.node(data, nil)
    
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    return @head # is always pointing to the first

  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    return 0
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
