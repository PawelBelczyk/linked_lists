# linked_lists
My linked lists in ruby. 


my first project... 






class Node 

  attr_accessor :value, :next_node

  def initialize(value)
    @value = value 
    @next_node = nil
  end

end


node1 = Node.new("pies")
node2 = Node.new("kot")
node3 = Node.new("papuga")
node4 = Node.new("słoń")
node5 = Node.new("żyrafa")


node1.next_node = node2
node2.next_node = node3
node3.next_node = node4
node4.next_node = node5






head = node1



def printer(head)

return nil if head.nil?

  current = head
  
  while current
    print "( #{current.value} ) -> "
    current = current.next_node    
  end
print "nil"

end







def append(head, value)

  new_node = Node.new(value)
#pierwsze tworzymy nowy węzeł

  return new_node if head.nil?
#jeżeli lista jest pusta to nowy węzeł staje się głową 

current = head

while current.next_node
#dopóki lista zawiera jakiś node idź dalej
current = current.next_node
#lista idzie dalej do ostatniego elementu na liście
end

current.next_node = new_node
#dołaczanie nowego węzła

head
end

append(head, "bibi")
append(head, "kleoś ")
append(head, "misja")
append(head, "piesek")
append(head, "łyżka")
append(head, "Karolinka")




def prepend(head, value)
#prepend to operacja bez żadnych pętli, one są zbędne.

  new_node = Node.new(value)

  return new_node if head.nil?

  old_head = head
  head = new_node
  head.next_node = old_head
  head

  #wersja druga bardziej skondensowana

  #new_node.next_node = head
  #new_node

end


head = prepend(head, "alfa")
head = prepend(head,"beta")
head = prepend(head,"gamma")




def size(head)

  #jeżeli lista jest pusta to lepiej byłoby zwrócić zero jako wartość.
  return 0 if head.nil?

  counter = 0 

  current = head 

  while current
    counter += 1 
    current = current.next_node
  end

  counter
end

# count_of_nodes = size(head)
# puts "Count of nodes in this Linked Lists is: #{count_of_nodes}"

def head_value(head)

  return nil if head.nil?

  head.value
end



def tail_value(head)

  return nil if head.nil?

  current = head

  while current.next_node
    current = current.next_node
  end
  current.value
end


def value_at_index(head, index)

  return nil if head.nil?

  current = head

  counter = 0 

  while current
    #kolejność sprawdzania warunku jest ważna.  
    if counter == index 
      return current.value
    end

    current = current.next_node
    counter += 1

  end
end

# def value_at_index_v2(head, index)
#   return nil if head.nil?

#   current = head
#   index.times do
#     return nil if current.next_node.nil?
#     current = current.next_node
#   end
#   current.value
# end



# def pop_head(head)

#   return nil if head.nil?

#   new_head = head.next_node
#   head = new_head
#   head 
  
# end

def pop_head_v2(head)

  return nil if head.nil?

  head = head.next_node
end


def contains_value(head, target)

  # return nil if head.nil?
  # powyższa linijka jest zbędna ponieważ jeżeli linked lists nie zawiera szukanej wartości to ta metoda zwróci false.
  current = head

  while current
    if current.value == target
      return true
      #return kończy funkcję natychmiast.
    end
  current = current.next_node
  end
  false
end


def contains_value_recursive(head, target)
  return false if head.nil? #base case
  return true if head.value == target 

  contains_value_recursive(head.next_node, target) #next step
end


# def index(head, value)

#   return nil if head.nil?

#   current = head
  
#   counter = 0 

# while current

# if current.value == value
#   result = counter
# end

#   counter += 1 
# current = current.next_node

# end
# result
# end



def index_v2(head, value)

  return nil if head.nil?

  current = head
  counter = 0 
  while current 

    return counter if current.value == value
    counter += 1 
    current = current.next_node
  end
  nil
end









