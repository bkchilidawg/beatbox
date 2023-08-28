class BeatBox
  attr_reader :list
  def initialize
  @list = LinkedList.new
  end
  def append(data)
    splits = data.split(" ")
    splits.select do |split|
      @list.append(split)
    end
  end
  def next_node
    @list.current_node.next_node
  end
  def count 
    @list.count
  end
  #def play
    beats = @bb.list
  end

end