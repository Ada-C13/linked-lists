require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    return nil if self.length < 1
    return @head.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    count = 0
    current = @head
    while current != nil
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)
    if @head.nil?
      add_first(data)
      return
    end

    current = head
    until current.next.nil?
      current = current.next
    end

    current.next = Node.new(data)

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    current = head
    until current.next.nil?
      current = current.next
    end

    return current.data
  end

  # Time complexity - ?
  # Space complexity - ?
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
