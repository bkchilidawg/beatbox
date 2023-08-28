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
  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node = @head
    @head = new_node
  end
  def insert(position, data)
    current_node = @head
    (position - 1).times do
      return "List not long enough" if current_node.nil?
      current_node = current_node.next_node
    end
    new_node = Node.new(data)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
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
    elements = []
    while current_node
      elements << current_node.data
      current_node = current_node.next_node
    end
    elements.join(" ")
    #need clarification on how this works 
  end
  def find(start_position, count)
    current_node = @head
    (start_position).times do
      return nill if current_node.nil?
      current_node = current_node.next_node
    end
    elements = []
    count.times do
      break if current_node.nil?
        elements << current_node.data
        current_node = current_node.next_node
    end
    elements.join(" ")
  end
  def includes?(data)
    current_node = @head
    while current_node
      return true if current_node.data == data
      current_node = current_node.next_node
    end
    false
  end
end
