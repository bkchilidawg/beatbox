class LinkedList
  attr_reader :head
  def initialize
    @head = nil 
  end
  def append(data)
    
     @head = Node.new(data)
    #  binding.pry
  end

end