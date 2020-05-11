require_relative 'node'
require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(n)
  def add_first(value)
    node = Node.new(value, @head)
    @head = node
  end

  # Time complexity - O(1)
  # Space complexity - O(n)
  def get_first
    return @head.data if @head != nil
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def length
    counter = 0
    current = head
    until current.nil?
      counter += 1
      current = current.next
    end
    return counter
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def add_last(data)
    current = @head
    newNode = Node.new(data, nil)

    if current.nil?
      @head = newNode
    else
      until current.next.nil?
        current = current.next
      end
      current.next = newNode
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_last
    if @head.nil?
      return nil
    else 
      current = @head
      until current.next.nil?
        current = current.next
      end
    end
    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_at_index(index)
    current = @head

    currentIndex = 0

    while currentIndex < index && !current.nil?
      currentIndex += 1
      current = current.next
    end

    if current.nil?
      return nil
    end

    return current.data
  end

end

