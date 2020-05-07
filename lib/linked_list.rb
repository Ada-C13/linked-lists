require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @length = 0
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    if head == nil 
      @head = Node.new(data)
    else
      new_head = Node.new(data, head)
      @head = new_head
    end
    @length += 1
    return nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if head != nil
      return head.data
    end
      return head
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def length
    return @length
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if head.nil?
      add_first(data)
      return
    end
    @length += 1
    get_node_at_index(length).next = Node.new(data)
    return nil
  end

  # Time complexity - O(n) 
  # Space complexity - O(1)
  def get_last
    return get_at_index(length)
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    if index > length
      return nil
    end
    target_node = get_node_at_index(index)
    return target_node.data
  end

  private
  def get_node_at_index(index)
    current = head
    index.times do 
      if current.next != nil
        current = current.next
      end
    end
    return current
  end
end
