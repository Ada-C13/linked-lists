require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1) => because we don't need to traverse 
  # Space complexity - O(1) => because we are not using any extra space
  def add_first(data)
    @head = Node.new(data, @head)

    # # same as above 
    # new_head = Node.new(data)
    # new_head.next = @head
    # @head = new_head
  end

  # Time complexity -  O(1) => because we don't need to traverse 
  # Space complexity - O(1) => because we are not using any extra space
  def get_first
    return nil if @head.nil? 

    return @head.data 
  end

  # Time complexity -  O(n) => where n is the length of the node
  # Space complexity - O(1) => because we are not using any extra space
  def length
    return 0 if head.nil?

    count = 1  
    current = @head

    until current.next.nil?  # important!
      count += 1 
      current = current.next
    end

    return count
  end

  # Time complexity -  O(n) => where n is the length of the node
  # Space complexity - O(1) => because we are not using any extra space
  def add_last(data)
    new_node = Node.new(data)
    if @head.nil? 
      @head = new_node  # or  => add_first(data)
      return
    end 

    current = @head 
    until current.next.nil? # important!
      current = current.next
    end

    current.next = new_node
  end

  # Time complexity - O(n) => where n is the length of the node
  # Space complexity - O(1) => because we are not using any extra space
  def get_last
    return nil if @head.nil?

    current = @head 

    until current.next.nil? 
      current = current.next
    end 

    return current.data
  end

  # Time complexity - O(n) => where n is the length of the node
  # Space complexity - O(1) => because we are not using any extra space

  # reference: https://adaacademy.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx#folderID=%22e9fc253f-559d-4ac1-b741-abb4014377f5%22
  def get_at_index(index)
    return nil if @head.nil?

    current_index = 0 
    current = @head 

    while (current_index < index && !current.nil?)
      current_index += 1 
      current = current.next
    end 

    if current.nil?
      raise ArugmentError 
    else 
      return current.data 
    end
  end
end
