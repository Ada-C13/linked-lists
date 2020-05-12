require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity -  O(1)
  # Space complexity -  O(1) only creating one node
  def add_first(data) # creat a new node & assign it to @head
    @head = Node.new(data, @head)

  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil if @head == nil
    return @head.data # is always pointing to the first

  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    return 0 if @head == nil
    count = 1
    current = head
    while current.next != nil
      current = current.next
      count += 1
    end
    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    return add_first(data) if @head == nil

    current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(data, nil)
    self
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return nil if @head == nil

    current = @head
    while current.next != nil
      current = current.next
    end
   return current.data
  
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_at_index(index)

    return nil if @head == nil

    count = 0
    current = head
    while current != nil  # return before current.next 
      if count == index
        return current.data
      end
      current = current.next
      count += 1
    end
    return count

  end
end
