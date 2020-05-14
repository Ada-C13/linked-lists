require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1); simply change references within the node.
  # Space complexity - O(1)
  def add_first(data)
    new_node = Node.new(data, @head)

    @head = new_node

    return new_node
  end

  # Time complexity - O(1); simply access the head.
  # Space complexity - O(1)
  def get_first
    @head == nil ? nil : @head.data
  end

  # Time complexity - O(n), with n being the number of elements in the linked list.
  # Space complexity - O(1)
  def length
    length = 0
    current_node = @head

    while current_node != nil
      length += 1
      current_node = current_node.next
    end

    return length
  end

  # Time complexity - O(n), with n being the number of elements in the linked list.
  # Space complexity - O(1)
  def add_last(data)
    current_node = @head

    if current_node == nil
      add_first(data)
      return
    end

    while current_node.next != nil
      current_node = current_node.next
    end

    current_node.next = Node.new(data, nil)
  end

  # Time complexity - O(n), with n being the number of elements in the linked list.
  # Space complexity - O(1)
  def get_last
    return nil if @head == nil

    current_node = @head

    while current_node.next != nil
      current_node = current_node.next
    end

    return current_node.data
  end

  # Time complexity - O(n), with n being the number of elements in the linked list.
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if head == nil

    count = 0

    current_node = @head

    until count == index
      current_node = current_node.next
      count += 1
    end

    return current_node.data
  end
end
