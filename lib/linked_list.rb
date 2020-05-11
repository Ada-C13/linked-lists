require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ? O(1)
  # Space complexity - ? O(1)
  def add_first(data)
    if @head.nil?
      @head = Node.new(data)
    else
      @head = Node.new(data, @head)
    end
  end

  # Time complexity - ? O(1)
  # Space complexity - ? O(1)
  def get_first
    if @head != nil
      return @head.data
    end
  end

  # Time complexity - ? O(n)
  # Space complexity - ? O(1)
  def length
    count = 0
    corrent = @head
    while corrent != nil
      count += 1
      corrent = corrent.next
    end
    return count
  end

  # Time complexity - ? 0(n)
  # Space complexity - ? 0(1)
  def add_last(data)
    if @head.nil? 
      @head = Node.new(data)
      return
    end
    current = @head
    unless current.next.nil?
      current = current.next
    end

    current.next = Node.new(data, nil)
  end

  # Time complexity - ? O(n)
  # Space complexity - ? O(1)
  def get_last
    if @head.nil?
      return nil
    end
    current = @head
    while current.next != nil
      current = current.next
    end

    return current.data
  end

  # Time complexity - ? O(n)
  # Space complexity - ? O(1)
  def get_at_index(index)
    node_index = 0
    current = @head
    while node_index < index && !current.nil?
      node_index += 1
      current = current.next
    end

    if current.nil?
      return nil
    else
     return current.data
    end
  end
end


