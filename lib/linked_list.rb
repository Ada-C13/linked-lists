require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head.nil?
      return nil
    end
    return @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    return 0 if @head.nil?
    count = 1
    current = @head
    while current.next != nil
      count += 1
      current = current.next
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
    return nil if @head.nil?
    current = @head
    while current.next != nil
      current = current.next
    end
    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if @head.nil?
    return @head.data if index == 0
    order = 0
    current = @head
    while current.next != nil
      order += 1
      current = current.next
      if order == index
        return current.data
      end
    end
  end
end
