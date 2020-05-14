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
    current = @head
    return nil if current.nil?
    
    return @head.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    current = @head
    length = 0
    return 0 if current.nil?
    
    while !current.nil?
      current = current.next
      length += 1
    end
    return length
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    current = @head
    
    if current.nil?
      @head = Node.new(data)
      return
    end
    while !current.next.nil?
      current = current.next
    end
    current.next = Node.new(data)
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    # return nil unless @head
    if @head == nil
      return nil
    end
    current = @head
    while !current.next.nil?
      current = current.next
    end
    
    return current.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if @head.nil?

    current = @head
    index.times do
      return nil if current.next.nil?
      current = current.next
    end

    return current.data
  end
end