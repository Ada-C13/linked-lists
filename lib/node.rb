# defines a node in a linkedList
class Node
  attr_reader :data
  attr_accessor :next

  def initialize(value, nextNode = nil)
    @data = value # the data that is passed in
    @next = nextNode # a reference to the next object
  end
end
