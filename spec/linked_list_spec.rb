require "./lib/linked_list"
require "./lib/node"
require 'pry'

RSpec.describe LinkedList do
  before(:each) do
    @list = LinkedList.new
    @node = Node.new("plop")
  end
  describe '#initialize' do
    it 'instantiate a new Linkedlist object' do 

      expect(@list).to be_a(LinkedList)
    end
  end
     
  describe "#head" do
    it 'starts with no head' do 

      expect(@list.head).to eq(nil)
    end
  end
  describe "#append" do  
    it 'adds a new piece of data (data can really be anything) to the list' do
    end
    it 'fills the head with data' do
      @list.append("doop")
      expect(@list.head.data).to eq("doop")
      expect(@list.head.next_node).to eq(nil)
      expect(@list.head).to be_a Node
    end
    it 'will make the next node empty' do
      @list.append("doop")
      expect(@list.head.next_node).to eq(nil)
    end
    it 'appends a new piece of data' do
      @list.append("deep")
      expect(@list.head.data).to eq("deep")
      expect(@list.head.next_node).to eq(nil)
      expect(@list.head).to be_a Node
    end
  end
  describe '#count' do
    it 'will have count number of node in the list' do
      @list.append("doop")
      expect(@list.count).to eq(1)
    end
    it 'will have one node in the list' do
      @list.append("doop")
      @list.append("deep")
      expect(@list.count).to eq(2)
    end
  end
  describe '#to_string' do
    it "willchange the node to a string" do
      @list.append("doop")
      expect(@list.to_string).to eq("doop")
    end
  end
end