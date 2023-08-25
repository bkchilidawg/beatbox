require "./lib/linked_list"
require "./lib/node"
require 'pry'

RSpec.describe LinkedList do
  before(:each) do
    @list = LinkedList.new
    @node = Node.new("plop")
  end
  it 'exists' do 

    expect(@list).to be_a(LinkedList)
  end 
  it 'has an attribute called head' do 

    expect(@list.head).to eq(nil)
  end
  it 'has a method called append' do
    @list.append("doop")

    expect(@list.append("doop")).to be_a(LinkedList)
  end
  it 'fills the head with data' do
    @list.append("doop")

    expect(list.head.data).to eq("doop")
  end
end