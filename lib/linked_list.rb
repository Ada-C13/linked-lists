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
    return nil if head.nil?

    return head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    current = @head
    count = 0

    while current != nil
      count += 1
      current = current.next
    end

    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    current = @head

    return self.add_first(data) if current == nil
    while current.next != nil
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

    until current.nil?
      return current.data if count == index
      current = current.next
      count += 1
    end

    return nil
  end
end
