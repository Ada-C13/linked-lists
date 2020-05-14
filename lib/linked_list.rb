require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    current_node = Node.new(data, @head)
        @head = current_node
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    current = @head
    
    if current == nil
      return nil
    else
      return current.data
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    current = @head
    count = 0

    while current
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if !@head 
      @head = Node.new(data)
      return @head
    else
      current = @head
    end 

    until current.next.nil?
      current = current.next
    end 
    
    current.next = Node.new(data)
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    current = @head
    
    while current.next != nil
      current = current.next
    end

    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    current = @head
    count = 0
    
    until count == index
      return nil if current.nil?
      count += 1
      current = current.next
    end
    return current.data
  end
end