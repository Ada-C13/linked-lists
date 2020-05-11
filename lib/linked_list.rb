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
    return @head = new_node
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
    count = 0
    current_node = @head
    while current_node
      count += 1
      current_node = current_node.next
    end
    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def add_last(data)
    new_node = Node.new(data)

    if self.length == 0
      @head = new_node
      return @head.data
    end

    current_node = @head
    previous_node = current_node
    while current_node
      previous_node = current_node
      current_node = current_node.next
    end

    previous_node.next = new_node
    return new_node.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    length = self.length

    i = 0
    current_node = @head
    until i == length - 1
      current_node = current_node.next
      i += 1
    end
    return current_node.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if index > self.length
    current_node = @head
    
    i = 0
    until i == index
      current_node = current_node.next
      i += 1
    end
    return current_node.data
  end
end

# @list = LinkedList.new
# count = 0
# while count < 5
#   @list.add_first(count)
#   count += 1
# end
# @list.add_last(0)