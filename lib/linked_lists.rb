require_relative './node'



class LinkedList

  attr_accessor :head

  def initialize
    @head = nil 
  end

def append(value)
  new_node = Node.new(value)
  return @head = new_node if @head.nil?

  current = @head
  
  current = current.next_node while current.next_node
  current.next_node = new_node

end


def prepend(value)

  new_node = Node.new(value)

  new_node.next_node = @head
  @head = new_node

end

def size
  return 0 if @head.nil?

  counter = 0 
  current = @head
  while current
    counter += 1 
    current = current.next_node
  end

  counter
end

def head_value
  @head&.value
end


def tail_value
  return nil if @head.nil?

  current = @head
  current = current.next_node while current.next_node
  current.value
end

def at(index)
  return nil if @head.nil? || index < 0 

  current = @head
  counter = 0 
  while current 
    return current.value if counter == index
    current = current.next_node
    counter += 1 
  end
  
  nil
end

def pop
  return nil if @head.nil?

  value = @head.value
  @head = @head.next_node
  value
end


def contains?(value)
  current = @head
  while current 
    return true if current.value == value
    current = current.next_node
  end

  false
end

def index(value)

  current = @head
  counter = 0 
  while current 
    return counter if current.value == value
    current = current.next_node
    counter += 1 
  end
  nil
end


def to_s
  return "" if @head.nil?

  result = ""
  current = @head
  
  while current 
    result += "(#{current.value}) -> "
    current = current.next_node
  end
  result + "nil"
end
end

list = LinkedList.new

list.append("papuga")
list.append("żaba")
list.append("żabot")
list.append("moje")
list.append("lalka")

puts list 