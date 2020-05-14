require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(n)
  def add_first(data) 
    @head = Node.new(data, @head)
  end

  # Time complexity - O(1)
  # Space complexity - O(n)
  def get_first
    return @head.nil? ? nil : @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def length
    count = 0
    pointer = @head 
    while !pointer.nil? do
      pointer = pointer.next;
      count += 1;
    end
    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def add_last(data)
    if @head.nil? 
      @head = Node.new(data)
    else
      pointer = @head 
      while !pointer.next.nil?
        pointer = pointer.next
      end
      pointer.next = Node.new(data)
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_last
    return nil if @head.nil? 
    pointer = @head 
      while !pointer.next.nil?
        pointer = pointer.next
      end
    return pointer.data
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_at_index(index)
    counter = 0
    pointer = @head
    return nil if @head.nil?
    until counter == index || pointer.next.nil?
      pointer = pointer.next
      counter += 1
    end
    return pointer.data
  end
end
