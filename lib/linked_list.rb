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
    return @head.data
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    @head.nil? ? nil : @head.data
  end

  # Time complexity - O(n). n is the number of nodes
  # Space complexity - O(1)
  def length
    current = @head

    count = 0
    until current.nil?
      current = current.next
      count += 1
    end
    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    return add_first(data) if @head.nil?

    current = @head
    until current.next.nil?
      current = current.next
    end
    current.next = Node.new(data)
    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    current = @head

    until current.next.nil?
      current = current.next
    end
    return current.data
  end

  # Time complexity - O(n), n is the number of index
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if @head.nil?

    current = @head
    count = 0
    while count < index
      current = current.next
      count += 1
    end
    return current.data
  end
end
