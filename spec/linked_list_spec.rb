require "./lib/linked_list"
require "./lib/node"
require 'pry'

RSpec.describe Linked_List do
  before(:each) do
    @list = Linked_List.new
    @node = Node.new("plop")
  end
  it 'instantiate a new Linked_list object' do 

    expect(@list).to be_a(Linked_List)
  end 
  it 'has an attribute called head' do 

    expect(@list.head).to eq(nil)
  end
  describe "#append" do  
    it 'has a method called append' do
      @list.append("doop")

      expect(@list.append("doop")).to be_a(Linked_List)
    end
    it 'fills the head with data' do
      @list.append("doop")

      expect(@list.head.data).to eq("doop")
    end
  end
end