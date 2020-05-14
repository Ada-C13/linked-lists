require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - o(n) - n length of linked list 
  # Space complexity - o(1)
  def add_first(data)
    new_head = Node.new(data)
    new_head.next = @head;
    @head = new_head;
  end

  # Time complexity - o(1)
  # Space complexity - o(1)
  def get_first
    if @head == nil 
      return nil
    end 
    return @head.data
  end

  # Time complexity - o(n)
  # Space complexity - o(1)
  def length
    if @head == nil 
      return 0
    end 
   current = @head
   count = 0
   while current != nil 
    current = current.next
    count = count + 1
   end 

   return count
  end

  # Time complexity - o(n)
  # Space complexity - o(1)
  def add_last(data)
    if @head == nil 
      @head = Node.new(data)
      return 
    end 
    current = @head 
    next_node = @head.next
    while next_node != nil 
      current = next_node
      next_node = next_node.next
    end 
    current.next = Node.new(data)
  end

  # Time complexity - o(n)
  # Space complexity - o(1)
  def get_last
    if @head == nil 
      return nil 
    end
    current = @head 
    next_node = @head.next
    while next_node != nil
      current = next_node;
      next_node = next_node.next; 
    end 
    return current.data;
  end

  # Time complexity - o(n) - n is num of node until you reach index
  # Space complexity - o(1)
  def get_at_index(index)
    i = 0 
    current = @head 
    while i < index && current != nil 
      i+=1
      current = current.next
    end 

    if current.nil? 
      raise ArgumentError
    end
   
    return current.data

  end
end

