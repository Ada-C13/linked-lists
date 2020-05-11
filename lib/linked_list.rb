require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - O(1), always @head
  # Space complexity - O(1)
  def get_first
    @head.nil? ? nil : @head.data
  end

  # Time complexity - O(n), where n is the length of the array
  # Space complexity - O(1)
  def length
    current = @head
    count = 0

    until current.nil? 
      count += 1
      current = current.next
    end

    return count 
  end

  # Time complexity - O(n), where n is the length of the array
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      @head = Node.new(data,@head)
      return 
    end 

    current = @head

    until current.next.nil? 
      current = current.next
    end

    current.next = Node.new(data)
  end

  # Time complexity - O(n), where n is the length of the array
  # Space complexity - O(1)
  def get_last
    current = @head

    until current.next.nil? 
      current = current.next
    end

    return current.data
  end

  # Time complexity - O(n), where n is the index
  # Space complexity - O(1)
  def get_at_index(index)
    current = @head
    count = 0

    until count == index
      return nil if current == nil
      current = current.next
      count += 1
    end
    return current.data
  end
end
