require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    if @head
      @head = Node.new(data, @head)
    else
      @head = Node.new(data)
    end
  end
    
  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return @head.data if @head
  end

  # Time complexity - O(n)
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

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    return add_first(data) if !@head
  
    last = @head.next
    until last.nil?
      last = last.next
    end

    Node.new(data, last)
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    return get_first if !@head.next

    last = @head.next
    until last.nil?
      last = last.next
    end

    return last
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
