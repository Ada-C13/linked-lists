require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity O(1)
  # Space complexity O(1)
  def add_first(data)
    new_node = Node.new(data)
    if @head = nil
      @head = new_node
    else 
      new_node.next = @head
      @head = new_node
    end

  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head.nil?
      return nil
    else
      return @head.data
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    current = @head
    count = 0
    if head == nil
      return count
    end
    until current.nil?
      current = current.next
      count += 1
    end
    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      @head = Node.new(data)
      return
    end
    current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(data)
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    if @head.nil?
      return nil
    end
    current = @head
    while current.next != nil
      current = current.next
    end
    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    if @head.nil?
      return nil
    end
    current = @head
    count = 0
    until count == index || current.next.nil?
      current = current.next
      count += 1
    end
    return current.data
  end
end
