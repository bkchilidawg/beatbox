class LinkedList
  attr_reader :head
  def initialize
    @head = nil 
  end
  def append(data)
    next_node = @next_node
    if @head.nil?
     @head = Node.new(data)
    else current_node = @head
      current_node.next_node
      while !current_node.next_node.nil?
        current_node = current_node.next_node
        #get clarification on the psuedocode
      end
      current_node.next_node = Node.new(data)
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