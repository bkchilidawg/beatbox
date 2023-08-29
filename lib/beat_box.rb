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
  def play
    beats = list.to_string
    beats = beats.split
    beats.select do |beat|
      `say -r 500 -v Cellos #{beat}`
    end
    beats.join(" ")
  end

end