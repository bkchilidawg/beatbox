require "./lib/node"
require 'pry'

RSpec.describe Node do 
  before(:each) do 
   @node = Node.new("plop")
  end

  it 'exists' do

    expect(@node).to be_a(Node)
  end
  it 'has a atribute named data' do

    expect(@node.data).to eq("plop")
  end
  it 'has a attribute called ' do

    expect(@node.next_node).to eq(nil)
  end

end
