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

  # Time complexity - o(1)
  # Space complexity - o(1)
  def get_first
    
    return nil if @head.nil?
    return @head.data
    
  end

  # Time complexity - o(n)-->it Traveses all the list to get the count.
  # Space complexity - o(1)
  def length
    return 0 if @head.nil?

    count = 0 
    current = @head
    until current.nil?
      count += 1
      # Move the pointer to the next, otherwise will be infinite loop.
      current = current.next
    end

    return count
  end

  # Time complexity - o(n)--> It traveses all the list to put the data at the end.
  # Space complexity - o(1)
  def add_last(data)
    new_node = Node.new(data)
    # Using add_first function to add new node in case the list is empty.
    if @head.nil?
      add_first(new_node.data)
      return 
    end

    pointer = @head
    # Until we reach the last node
    until pointer.next.nil?
      # Move the pointer to the next.
      pointer = pointer.next
    end

    pointer.next = new_node
    new_node.next = nil
  end

  # Time complexity - o(1)-->It traveses all the list to get last one. 
  # Space complexity - o(1)
  def get_last
    return nil if @head.nil?  
    pointer = @head

    until pointer.next.nil?
      pointer = pointer.next
    end
    return pointer.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
