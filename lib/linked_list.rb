require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    first = Node.new(data, @head)
    @head = first

    first
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    @head.nil? ? nil : @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    # return 0
    current = @head
    counter = 0
    until current.nil?
      counter += 1
      current = current.next
    end

    counter
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      add_first(data)
      return
    end

    current = @head
    current = current.next until current.next.nil?

    current.next = Node.new(data)
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return nil if @head.nil?

    current = @head
    current = current.next until current.next.nil?

    current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    current_index = 0
    current = @head
    while current_index < index && !current.nil?
      current_index += 1
      current = current.next
    end

    current.nil? ? nil : current.data
  end
end
