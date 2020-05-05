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
   current = @head
   count = 0
   while current != nil 
    count += 1
    current = current.next
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

    while current != nil 
      current = current.next
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

    while current != nil 
      current = current.next
      if current == nil 
        return current
      end 
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)


  end
end
