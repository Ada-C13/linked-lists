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

  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last

  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)

  end
end

@list = LinkedList.new
count = 0
while count < 5
  @list.add_first(count)
  count += 1
end
@list.length