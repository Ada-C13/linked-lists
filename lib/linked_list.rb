require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    if @head
      @head = Node.new(data, @head)  
    else
      @head = Node.new(data)
    end
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head
      return @head.data
    else
      return nil
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    if !@head
      return 0
    else
      current_node = @head
      length = 1
      while current_node.next != nil
        current_node = current_node.next
        length += 1
      end
      return length
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if !@head
       add_first(data)
    else
      current_node = @head
      while current_node.next != nil
        current_node = current_node.next
      end
      current_node.next = Node.new(data)
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    if !@head
      return nil
    else
      current_node = @head
      while current_node.next != nil
        current_node = current_node.next
      end
      return current_node.data
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    if !@head
      return nil
    else
      current_node = @head
      current_index = 0
      while current_index < index && current_node.next != nil
        current_index += 1
        current_node = current_node.next
      end
      return current_node.data
    end
  end
end
