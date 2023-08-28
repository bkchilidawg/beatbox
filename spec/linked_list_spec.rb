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
      @list.append("doop")
      expect(@list.head.data).to eq("doop")
      expect(@list.head.next_node).to eq(nil)
      @list.append("deep")
      expect(@list.head.next_node.data).to eq("deep")
      expect(@list.head.next_node.next_node).to eq(nil)
    end
  end
  describe '#count' do
    it 'will have count number of node in the list' do
      @list.append("doop")
      expect(@list.count).to eq(1)
    end
    it 'will have two nodes in the list' do
      @list.append("doop")
      @list.append("deep")
      expect(@list.count).to eq(2)
    end 
  end
  describe '#to_string' do
    it "will change the node to a string" do
      @list.append("doop")
      expect(@list.to_string).to eq("doop")
    end
    it "will change all the nodes to a string" do
      @list.append("doop")
      @list.append("deep")
      expect(@list.to_string).to eq("doop deep")
    end
  end
  describe '#prepend' do
    it 'will append "plop" and "suu" to the list and convert to a string' do
      @list.append("plop")
      @list.append("suu")
      expect(@list.to_string).to eq("plop suu")
    end
    it "will create a new head" do
      @list.append("plop")
      @list.append("suu")
      @list.prepend("dop")
      expect(@list.to_string).to eq("dop plop suu")
    end
  end
  describe '#insert' do
    it 'will inseert data in a specified node' do
      @list.append("plop")
      @list.append("suu")
      @list.prepend("dop")
      @list.insert(1, "woo")
      expect(@list.to_string).to eq("dop woo plop suu")
    end
  end
  describe '#find' do
    it 'will find the data in a certain node' do
      @list.append("deep")
      @list.append("woo")
      @list.append("shi")
      @list.append("shu")
      @list.append("blop")
      expect(@list.to_string).to eq("deep woo shi shu blop")
    end
    it 'will find data in certain nodes and certain nodes after' do
      @list.append("deep")
      @list.append("woo")
      @list.append("shi")
      @list.append("shu")
      @list.append("blop")

      expect(@list.find(2, 1)).to eq("shi")
      expect(@list.find(1, 3)).to eq("woo shi shu")

    end
  end
  describe '#includes?' do
    it 'will find out if the current list includes a certain data' do
      @list.append("deep")
      @list.append("woo")
      @list.append("shi")
      @list.append("shu")
      @list.append("blop")

      expect(@list.includes?("deep")).to eq(true)
      expect(@list.includes?("dep")).to eq(false)
    end
  end
  describe'#pop' do
    it 'will remove the last node and return it' do
      @list.append("deep")
      @list.append("woo")
      @list.append("shi")
      @list.append("shu")
      @list.append("blop")

      expect(@list.pop).to eq("blop")
    end
  end
end