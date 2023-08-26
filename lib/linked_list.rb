class LinkedList
  attr_reader :head
  def initialize
    @head = nil 
  end
  def append(data)
    if @head.nil?
     @head = Node.new(data)
    else last_node = @head
      last_node.next_node
      while last_node.next_node.nil?
        last_node = last_node.next_node
        #get clarification on the psuedocode
      end
      last_node.next_node = Node.new(data)
    end
    data
  end
  def count
    current_node = @head
    count = 0
    
    while current_node 
      count += 1
      current_node = current_node.next_node
    end
    count
  end
  def to_string
    current_node = @head
    current_node.data.to_s
  end
end