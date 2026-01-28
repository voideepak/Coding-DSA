class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  attr_accessor :root

  def initialize(value)
    @root = Node.new(value)
  end
  def append(value)
    current = @root
    while current.next
      current = current.next
    end
    current.next = Node.new(value)
  end

  def display
    elements = []
    current = @root
    while current
      elements << current.value
      current = current.next
    end
    elements
  end
end
