require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    return @head = Node.new(data, @head)
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil if @head.nil?
    return @head.data
  end

  # Time complexity - O(n) where n is number of nodes
  # Space complexity - O(1)
  def length
    current = @head
    counter = 0
    while current != nil
      current = current.next
      counter += 1
    end

    return counter
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    return @head = Node.new(data,nil) if @head.nil?   # empty list

    current = @head
    while !current.next.nil?
      current = current.next
    end

    return current.next = Node.new(data, nil)
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return nil if @head.nil?

    current = @head
    while !current.next.nil?
      current = current.next
    end

    return current.data
  end

  # Time complexity - O(n) where n is index
  # Space complexity - O(1)
  def get_at_index(index)
    current = @head
    counter = 0

    while counter < index
      return nil if current.nil?
      current = current.next
      counter += 1
    end

    return current.data
  end
end
