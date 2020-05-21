require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)?
  # Space complexity - O(1)?
  def add_first(data)
    if @head.nil?
      @head = Node.new(data)
    else
      @head = Node.new(data, @head)
    end
  end

  # Time complexity - O(1)?
  # Space complexity - O(1)?
  def get_first
    @head.data if @head != nil
  end

  # Time complexity - O(n)?
  # Space complexity - O(1) ?
  def length
    count = 0
    current = @head
    until current == nil
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - O(n) ?
  # Space complexity - O(1) ?
  def add_last(data)
    return @head = Node.new(data) if @head.nil?
      
    current = @head
    while current.next != nil
      current = current.next
    end
  
    current.next = Node.new(data)
  end

  # Time complexity - O(n)?
  # Space complexity - O(1)?
  def get_last
    return nil if @head.nil?
    
   
    current = @head
    while current.next != nil
      current = current.next
    end
    
    return current.data
  end

  # Time complexity - O(n)?
  # Space complexity - O(1) ?
  def get_at_index(index)
    return nil if @head.nil?

    current = @head
    index.times do 
      current = current.next
    end
    current.data
  end
end
