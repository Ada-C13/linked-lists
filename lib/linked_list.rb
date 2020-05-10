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
    return @head.data if @head != nil
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    count = 0
    current = @head
    while current != nil
      count += 1
      current = current.next
    end

    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(n), where n is the number of nodes we're adding
  def add_last(data)
    if @head.nil? 
      @head = Node.new(data)
    else
    
      current = @head 
      while current.next != nil
        current = current.next 
      end 

      current.next = Node.new(data)
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    current = @head

    while current.next != nil
      current = current.next
    end

    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    current_index = 0
    current = @head 

    while (current_index < index && !current.nil?)

      current_index += 1
      current = current.next  
    end

    if current.nil?
      return nil
    else
      return current.data
    end
  end
end
