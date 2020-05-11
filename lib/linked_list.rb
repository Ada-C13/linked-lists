require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize(nextNode = nil)
    @head = nil
    @next = nextNode
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    return @head ? @head.data : nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    return 0 if @head.nil?
    
    current = @head
    count = 0 
    until current.nil?
      count += 1
      current = current.next
    end

    return count
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)
    return add_first(data) if @head.nil?
    
    current = @head
    current = current.next until current.next.nil?
    current.next = Node.new(data)
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    current = @head
    current = current.next until current.next.nil?
    return current.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
