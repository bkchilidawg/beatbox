require "./lib/node"
require 'pry'

RSpec.describe Node do 
  before(:each) do 
   @node = Node.new("plop")
  end

  it 'instantiate a new Node object' do

    expect(@node).to be_a(Node)
  end
  describe "#data" do
    before(:each) do 
      @node = Node.new("plop")
    end

    it 'has data that can be retrieved' do

    expect(@node.data).to eq("plop")
    end
    it 'has a attribute called @head' do

    expect(@node.next_node).to eq(nil)
    end
  end

end
