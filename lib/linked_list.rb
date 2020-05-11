require_relative 'node'
#o->o->o->o
#head......tail, unidirectional 
#current is whatever node we are on
#remember to make a new node, assign it to another variable

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    new_node = Node.new(value, @head)
    @head = new_node
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return @head ? @head.data : nil
  end

  # Time complexity - O(n)
  # Space complexity - O(1) because this list isn't growing over time
  def length
    length = 0
    if !@head
      return length
    else
      current = @head
      while current
        length += 1
        current = current.next
      end
    end
    return length
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    new_node = Node.new(data)
    if !@head
      @head = new_node
    else
      current = @head
    # while current.next
    while current.next != nil
      current = current.next
    end
    current.next = new_node
  end
end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    # return nil unless @head
    if @head == nil
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
    # return nil unless @head
    if @head == nil
      return nil
    end
    current = @head
    index.times do 
      # return nil unless current.next
      if current.next == nil #check if index is out of bounds
        return nil
      end
      current = current.next
    end
    return current.data
  end
end
