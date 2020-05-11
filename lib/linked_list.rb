require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @length = 0
  end

  # Time complexity - O(1) no loops and adding it to the begining
  # Space complexity - O(1) always creatign one item
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
    @length = @length + 1
  end

  # Time complexity - O(1) only ever has to go through 1 item
  # Space complexity - O(1) not making anything
  def get_first
    return @head == nil ? nil : @head.data
  end

  # Time complexity - O(1) - We did all the work for this as we were adding to the list
  # Space complexity - O(1) - Not adding anything new
  def length
    return @length
  end

  # Time complexity - O(n) we have to go through the linked list to get to the end
  # Space complexity - O(1) always creating the same amout of items no matter the data passed in
  def add_last(data)
    new_node = Node.new(data)

    current_node = @head

    if @head == nil
      @head = new_node
      @length = @length + 1
      return
    end

    until current_node.next == nil
      current_node = current_node.next
    end

    current_node.next = new_node
    @length = @length + 1
    return
       
  end

  # Time complexity - O(n) we have to go through the linked list to get to the end
  # Space complexity - O(1) always creating the same amout of items no matter the data passed in
  def get_last
    current_node = @head

    until current_node.next == nil
      current_node = current_node.next
    end

    return current_node.data

  end

  # Time complexity - O(n) becuase you have to loop through the data to get to th answer
  # Space complexity - O(1) always creating the same amout of items no matter the data passed in
  def get_at_index(index)
    current_index = 0
    current = @head

    if index > @length - 1
      return nil
    end

    while (current_index < index && !current.nil?)
      current_index += 1
      current = current.next
    end

    if current.nil?
      raise ArgumentError
    else
      return current.data
    end
  end
end
