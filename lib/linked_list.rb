require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    node = Node.new(data, @head)
    @head = node
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
    count = 0
    current = @head

    while current != nil
      count += 1
      current = current.next
    end

    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    current = @head
    new_node = Node.new(data, nil)

    if current == nil
      @head = new_node
    else
      while current.next != nil
        current = current.next
      end

      current.next = new_node
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return nil if @head == nil
      
    if current = @head
      while current.next != nil
        current = current.next
      end

      return current.data
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    current_index = 0
    current = @head

    while (current_index < index) && (current != nil)
      current_index += 1
      current = current.next
    end

    if current == nil
      return nil 
    else
      return current.data
    end
  end

end
