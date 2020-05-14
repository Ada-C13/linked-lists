require_relative 'node'
require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return @head.nil? ? nil : @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    count = 0 
    return count if @head.nil?
    return length_helper(count, @head)
  end

  def length_helper(count, linked_list)
    count += 1
    return count if linked_list.next.nil?
    return length_helper(count, linked_list.next)
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    @head.nil? ? @head = Node.new(data, @head) : add_last_helper(data, @head)
  end

  def add_last_helper(data, linked_list)
    if linked_list.next.nil?
      linked_list.next = Node.new(data) 
      return
    else
      add_last_helper(data, linked_list.next)
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return nil if @head.nil?
    return get_last_helper(@head)
  end

  def get_last_helper(linked_list)
    return linked_list.data if linked_list.next.nil?
    return get_last_helper(linked_list.next)
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if index > length
    return get_at_index_helper(index, 0, @head)
  end

  def get_at_index_helper(index, count, linked_list)
    if count == index
      return linked_list.data
    else
      return get_at_index_helper(index, count + 1, linked_list.next)
    end
  end
end
