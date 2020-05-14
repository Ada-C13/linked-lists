require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize(nextNode = nil)
    @head = nil
    @next = nextNode
  end

  # Time complexity - O(1), we will always be adding to the beginning of the list
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - O(1), only looking at @head
  # Space complexity - O(1)
  def get_first
    return @head ? @head.data : nil
  end

  # Time complexity - O(n), where n is the number of nodes in the list
  # Space complexity - O(1)
  def length
    return 0 if !@head
    
    current = @head
    count = 0 
    until !current
      count += 1
      current = current.next
    end

    return count
  end

  # Time complexity - O(n), where n is the number of nodes in the list
  # Space complexity - O(1)
  def add_last(data)
    return add_first(data) if !@head
    
    current = @head
    current = current.next until !current.next
    current.next = Node.new(data)
  end

  # Time complexity - O(n), where n is the number of nodes in the list
  # Space complexity - ?
  def get_last
    current = @head
    current = current.next until !current.next
    return current.data
  end

  # Time complexity - O(n), where n is the value of index
  # Space complexity - O(1)
  def get_at_index(index)
    current = @head
    count = 0
    
    until count == index
      return nil if !current
      current = current.next
      count += 1
    end

    return current.data
  end
end
