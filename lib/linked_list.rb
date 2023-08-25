class Linked_List
  attr_reader :head
  def initialize
    @head = nil 
  end
  def append(data)
    if @head.nil?
     @head = Node.new(data)
    else last_node = @head
      last_node.next_node
      until last_node.next_node.nil?
        last_node = last_node.next_node
      end
    end

  end

end