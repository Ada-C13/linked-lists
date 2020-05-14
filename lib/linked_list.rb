require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    first = Node.new(data, head)
    @head = first
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return head ? head.data : nil
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    counter = 0
    return counter if head == nil

    node = head
    while node 
      counter += 1
      node = node.next
    end

    return counter
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)

    if head.nil?
      add_first(data)
      return
    end
  
    node = head
    until node.next.nil?
      node = node.next
    end
  
    node.next = Node.new(data)
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    node = head
    until node.next.nil?
      node = node.next
    end
    return node.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if head == nil

    counter = 0

    node = head
    until counter == index || node.next.nil?
      node = node.next
      counter += 1
    end

    return counter == index ? node.data : nil
  end
end
