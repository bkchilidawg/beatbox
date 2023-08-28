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
  describe 'initialize' do
   it 'will create a BeatBox class'do
    expect(@bb).to be_a(BeatBox)
    end
    it "will include a list"
    expect(@bb.list).to eq(@list)
  end
end