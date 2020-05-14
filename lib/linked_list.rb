require_relative "node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, @head) #have to pass in the new @head value since it changed 
    return @head.data
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head.nil?
      return nil
    else
      return @head.data
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    length = 0
    if @head.nil?
      return 0
    else
      current = @head
      until current.nil?
        current = current.next
        length += 1
      end
      return length
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    current = @head
    if current.nil?
      add_first(data)
      return
    else
      until current.next.nil? 
        current = current.next
      end
      current.next = Node.new(data)
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    if @head.nil?
      return nil
    else
      current = @head
      until current.next.nil?
        current = current.next
      end
      return current.data
    end
  end

  # Time complexity - O(n) - n is the index and worst case scenario the index = array.length - 1
  # Space complexity - O(1)
  def get_at_index(index)
    if @head.nil?
      return nil
    else
      current_index = 0
      current = @head
      while current_index < index && !current.nil?
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
end
