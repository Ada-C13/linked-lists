require_relative "node"

class LinkedList
  attr_reader :head

  # *Notes:
  # when .next_node is nil current node is the last element

  def initialize
    # If the head is nil it means the list is empty!
    @head = nil
  end

  # Time complexity - O(1) --> It doen not travese the the list to add the first value
  # Space complexity - O(1)
  def add_first(data)
    # Create a new node
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
      return
    end

    new_node.next = @head 
    # conection between the new node and the next one that is the head.
    @head = new_node # The new node becomes the head.

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    
    return nil if @head.nil?
    return @head.data
    
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    return 0
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)

    if @head.nil?
      add_first(data, @head)
      return
    end

    current = @head

    # Until we reach the last node
    until current.next.nil?
      current = current.next
    end

    current.next = new_node
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

# @list = LinkedList.new
# @list.add_first(3)
# @list.add_first(2)
# p @list
