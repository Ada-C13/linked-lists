require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil if @head.nil?
    return @head.data
  end

  # Time complexity - O(n), where n is the number of nodes in the linked list
  # Space complexity - O(1) (constant amount of work for counter variable)
  def length
    return 0 if @head.nil? 
    current = @head
    count = 0

    while (!current.nil?)
      current = current.next
      count += 1
    end

    return count
  end

  # Time complexity - O(n), where n is number of nodes in the linked list
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      self.add_first(data)
      return
    end

    new_node = Node.new(data)
    current = @head

    while (!current.next.nil?)
      current = current.next
    end

    current.next = new_node
  end

  # Time complexity - O(n), where n is the number of nodes in the linked list
  # Space complexity - O(1)
  def get_last
    return nil if @head.nil?
    current = @head

    while (!current.next.nil?)
      current = current.next
    end

    return current.data
  end

  # Time complexity - O(n), where n is the number of nodes in the linked list
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