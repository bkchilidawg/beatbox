require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"
require 'pry'

RSpec.describe BeatBox do
  before(:each) do
    @bb = BeatBox.new
    @list = LinkedList.new
    @node = Node.new("plop")
  end
  describe '#initialize' do
    it 'will create a BeatBox class' do
      expect(@bb).to be_a(BeatBox)
    end
  end
  describe '#list' do
    it 'will include a list' do
      expect(@bb.list).to be_a(LinkedList)
    end
    it 'will list the head as empty' do
      expect(@bb.list.head).to  be nil
    end
  end
  describe '#append' do
    it 'will have data in the head' do
      @bb.append("deep doo ditt")
      expect(@bb.list.head.data).to  eq("deep")
    end
    it 'will have "doo" in the node after head' do
      @bb.append("deep doo ditt")
      expect(@bb.list.head.next_node.data).to eq("doo") 
    end
  end
  describe '#count' do
    it 'will count the number of nodes' do
      @bb.append("deep doo ditt")
      @bb.append("woo hoo shu")
      expect(@bb.count).to  eq(6)
    end
  end
  describe '#say' do
    it "will play the beats" do
      @bb.append("deep doo ditt woo hoo shu")
      expect(@bb.play).to eq("deep doo ditt woo hoo shu")
    end
    end
  end
  describe '#list' do
    it 'will include a list' do
      expect(@bb.list).to be_a(LinkedList)
    end
    it 'will list the head as empty' do
      expect(@bb.list.head).to  be nil
    end
  end
  describe '#append' do
    it 'will have data in the head' do
      @bb.append("deep doo ditt")
      expect(@bb.list.head.data).to  eq("deep")
    end
    it 'will have "doo" in the node after head' do
      @bb.append("deep doo ditt")
      expect(@bb.list.head.next_node.data).to eq("doo") 
    end
  end
  describe '#count' do
    it 'will count the number of nodes' do
    @bb.append("deep doo ditt")
    @bb.append("woo hoo shu")
    expect(@bb.count).to  eq(6)
    end
  end
  describe '#say' do
    it "will play the beats" do
      @bb.append("deep doo ditt woo hoo shu")
      expect(@bb.play).to eq(`say -r 500 -v Cellos #{beats}`)
    end
  end
end