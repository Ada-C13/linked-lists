require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    new_head = Node.new(data)
    new_head.next = @head;
    @head = new_head;
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    if @head == nil 
      return nil
    end 
    return @head.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    if @head == nil 
      return 0
    end 

   current = @head
   count = 0

   while current != nil 
    current = current.next
    count = count + 1
    puts current
   end 

   return count
  end

  # Time complexity - ?
  # Space complexity - ?
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

  # Time complexity - ?
  # Space complexity - ?
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

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)


  end
end

