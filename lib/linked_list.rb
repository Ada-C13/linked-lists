require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    #creating/adding a new node
    new_node = Node.new(data) 
    #calling out/linking that the next node to this one is the current head 
    new_node.next = @head 
    #making the new node we just made the new head 
    @head = new_node
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
    return 0 if @head.nil?
    current = @head #starting baseline
    count = 0 

    #looping through and adding 1 until end (nil)
    while current != nil 
      count += 1
      current = current.next
    end 

    return count 
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    #if head is nil, adding first is same as adding last
    if head.nil?
      add_first(data)
      return 
    end 
    #else, set head as current and run until loop until current.next is nil
    current = head
    until current.next.nil?
    current = current.next 
    end 
    
    #then push new data into next position 
    current.next = Node.new(data)
  end

  # Time complexity - O(n)
  # Space complexity - O
  def get_last
    return nil if head.nil?

    current = head
    until current.next.nil?
    current = current.next 
    end 

    return current.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    return nil if head.nil?

    current = head
    current_index = 0
      while current_index < index && current.next != nil
        current_index += 1
        current = current.next
      end
      return current.data
  end
end
