require_relative "node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    #head starts as nil
    first = Node.new(data, @head) #(3,nil)
    @head = first # reassign first to be head
    # head = 3
    return first
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head.nil? #nil will only recongize nil
      return
    else
      @head.data
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    current = @head
    sum = 0
    until current.nil?
      sum += 1
      current = current.next
    end
    return sum
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      add_first(data)
      return
    end
    last = Node.new(data)
    current = @head
    until current.next.nil?
      current = current.next
    end

    current.next = last
  end

  # Time complexity - 0(n)
  # Space complexity - O(1)
  def get_last
    if @head.nil?
      return nil
    end

    current = @head

    until current.next.nil?
      current = current.next
    end
    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    if @head.nil?
      return nil
    end
    counter = 0
    current = @head
    until counter == index || current.next.nil?
      current = current.next
      counter += 1
    end
    return current.data
  end
end
