require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity  - O(1)
  # Space complexity - O(1) fixed
  def add_first(data)
    new_node = Node.new(data, @head)
    @head = new_node
    return @head
  end

  # Time complexity  - O(1)
  # Space complexity - O(1)
  def get_first
    if @head.nil?
      return nil
    else
      return @head.data
    end
  end

  # Time complexity  - O(n)
  # Space complexity - O(1)
  def length
    count = 0
    current = @head
    while !current.nil?
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity  - O(n)
  # Space complexity - O(1)
  def add_last(data)
    last = get_last_node
    return add_first(data) if last.nil?

    new_node = Node.new(data, nil)
    last.next = new_node
    return new_node 
  end

  # Time complexity  - O(n)
  # Space complexity - O(1)
  def get_last
    last = get_last_node
    if last.nil?
      return nil
    else
      return last.data
    end
  end  
  
  # Time complexity  - O(n)
  # Space complexity - O(1)
  def get_last_node
    return nil if @head.nil?
    current = @head
    while !current.next.nil?
      current = current.next
    end
    return current
  end

  # Time complexity  - O(n) worst case
  # Space complexity - O(1)
  def get_at_index(index)
    current_index = 0
    current = @head
    while (current_index < index && !current.nil?) do
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
