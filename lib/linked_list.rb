require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    @head = Node.new(data)
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
   next_node = @head.next
   count = 0

   while next_node != nil 
    count += 1
    current = next_node
    next_node = next_node.next
    count += 1
   end 

   if current != nil 
    return 1

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
