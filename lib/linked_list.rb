require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1) - always reassigning the first element (no need to traverse anything)
  # Space complexity - O(1)
  def add_first(data)

    return Node.new(data, new_node)
    # new_node = Node.new(data) # create a new node
    # new_node.next = @head # assign the new node's NEXT to the @head
    # @head = new_node # assign the head position to the new node
  end

  # Time complexity - O(1) - always retrieving the first element, no need to traverse
  # Space complexity - O(1)
  def get_first
    return nil if @head.nil?

    return @head.data
  end

  # Time complexity - O(n) n is the length of the list
  # Space complexity - O(1)
  def length
    return 0 if @head.nil?

    count = 0
    current = @head

    until current.nil?
      count += 1
      current = current.next
    end

    return count
  end

  # Time complexity - O(n) n is the length of the list
  # Space complexity - O(1)
  def add_last(data)
    new_node = Node.new(data)

    if @head.nil?
      add_first(value_to_add)
      return # THIS RETURN IS VERY IMPORTANT
    end

    current = @head

    until current.next.nil? 
      current = current.next
    end

    current.next = new_node
    return
  end

  # Time complexity - O(n) n is the length of the list
  # Space complexity - O(1)
  def get_last
    return if @head == nil

    current = @head

    until current.next.nil?
      current = current.next
    end

    return current.data
  end


  # Time complexity - O(n) worst case is n is at the end of the list, so n would be the length of the list
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if @head.nil?

    current = @head
    count = 0

    until count == index || current.next.nil?
      current = current.next
      count += 1
    end

    return current.data || nil
  end
end
