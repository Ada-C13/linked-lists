require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head.nil?
      return @head
    else
      return @head.data
    end
  end

  # Time complexity - O(n) Where n is the number of nodes in the linked list
  # Space complexity - O(n)
  def length
    if @head.nil?
      return 0
    else
      current = @head
      count = 0
      while current
        count += 1
        current = current.next
      end
      return count
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def add_last(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current = @head
      while current.next
        current = current.next
      end
      current.next = new_node
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_last
    current = @head
    until current.next.nil?
      current = current.next
    end
    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_at_index(index)
    count = 0
    current = @head
    while count < index
      if current.nil?
        return nil
      else
        current = current.next
        count += 1
      end
    end
    return current.data
  end
end
