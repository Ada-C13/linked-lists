require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    if @head.nil? 
      first_node=Node.new(data)
      @head=first_node
    else
      first_node=Node.new(data,@head)
      @head=first_node
    end
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
  # Space complexity - O(n)
  def length
    if @head.nil?
       return 0
    else 
     return count_node(@head, 1) 
    end
  end

  def count_node(node, counter)
    if node.next == nil 
      return counter 
    else 
      return count_node(node.next, counter += 1)
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def add_last(data)
    if @head.nil?
      new_node=Node.new(data) 
      @head = new_node
    else 
      current = @head
      l = self.length-1
   
      if l>0
        l.times do
          current = current.next
        end
      end 
      
      puts current
      if current.next == nil
        new_node=Node.new(data) 
        current.next = new_node
      end
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_last
    if @head.nil?
      return nil
    else 
      current = @head
      l = self.length-1 
      puts l 
      
      if l >0 
        l.times do
          puts current.data
        current=current.next
        end 
      end

      return current.data
    end
  end

  # Time complexity - O(n) n being the index
  # Space complexity - O(n)
  def get_at_index(index)
    if index > self.length
      return nil
    else 
      current=@head
      index.times do
        current=current.next
    end
    return current.data
    end
  end

end
