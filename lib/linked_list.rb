require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_first(data)
    @head =  Node.new(data, @head)
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil if @head.nil? 
    return @head.data 
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
    return 0
  end

  # Time complexity - O(n)
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

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
 
    current = @head 

    until current.next.nil?
      current = current.next
    end 

    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)

    current = @head 
    count = 0
    
    until current.nil? 
      if count == index 
        return current.data 
      end 
      count += 1 
      current = current.next 
    end 

    return nil 


  end
end
