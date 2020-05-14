require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    if @head.nil? 
      @head = Node.new(data)
    else
      @head = Node.new(data, @head)
    end
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head != nil
      return @head.data
    end
  end
    

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    return 0 if @head == nil
    length = 0
    current = @head
    while current != nil
      length += 1
      current = current.next
    end
    return length    
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
    current.next = Node.new(data, nil)
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

  # Time complexity - O(n) - best case can be O(1) if there is only on node
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if @head.nil?
    current = @head
    while index != 0
      current = current.next 
      index -= 1
    end
    return current.data
  end
end
