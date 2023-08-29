Iteration 1
Node Basics
Our Linked List will ultimately be composed of individual nodes, so in this iteration we’ll start with building out these nodes. Note that they are quite simple – a Node simply needs to have a slot for some data and a slot for a “next node”. Eventually this next_node position will be what we use to link the multiple nodes together to form the list.

For this iteration, build a simple node class that can perform these functions:

pry(main)> require "./lib/node"
#=> true

pry(main)> node = Node.new("plop")
#=> #<Node:0x007fbda8a88348 @data="plop", @next_node=nil>

pry(main)> node.data
#=> "plop"

pry(main)> node.next_node
#=> nil

Append, To String, and Count (Single Node / Element)
Great! We have nodes. In this iteration we’ll create the LinkedList class and start filling in the basic functionality needed to append our first node.

We’ll be adding the following methods:

append - adds a new piece of data (data can really be anything) to the list
count - tells us how many things are in the list
to_string - generates a string of all the elements in the list, separated by spaces
But for now, focus on building these functions so they work for just the first element of data appended to the list (we’ll handle multiple elements in the next iteration).

Expected behavior:

pry(main)> require "./lib/linked_list"
#=> true

pry(main)> require "./lib/node"
#=> true

pry(main)> list = LinkedList.new

#=> #<LinkedList:0x000000010d670c88 @head=nil>

pry(main)> list.head

#=> nil

pry(main)> list.append("doop")

pry(main)> list

#=> #<LinkedList:0x0000000110e383a0 @head=#<Node:0x0000000110e382d8 @data="doop", @next_node=nil>>

pry(main)> list.head.data

#=> "doop"

pry(main)> list.head.next_node

#=> nil

pry(main)> list.count

#=> 1

pry(main)> list.to_string

#=> "doop"

Append, All/To String, and Insert (Multiple Nodes)
Now that we can insert the first element of our list (i.e. the Head), let’s focus on supporting these operations for multiple elements in the list.

This iteration is really where we’ll build out the core structure that makes up our linked list – it will probably take you more time than the previous iterations.

Update your append, count, and to_string methods to support the following interaction pattern:

pry(main)> require "./lib/linked_list"

#=> true

pry(main)> require "./lib/node"

#=> true

pry(main)> list = LinkedList.new

#=> #<LinkedList:0x000000010d670c88 @head=nil>

pry(main)> list.head

#=> nil

pry(main)> list.append("doop")

#=> "doop"

pry(main)> list

#=> #<LinkedList:0x0000000110e383a0 @head=#<Node:0x0000000110e382d8 @data="doop", @next_node=nil>>

pry(main)> list.head

#=> #<Node:0x0000000110e382d8 @data="doop", @next_node=nil>

pry(main)> list.head.next_node

#=> nil

pry(main)> list.append("deep")

pry(main)> list

#=> #<LinkedList:0x00000001116213a0 @head=#<Node:0x00000001116212b0 @data="doop" @next_node=#<Node:0x00000001116210f8 @data="deep", @next_node=nil>>>

pry(main)> list.head.next_node

#=> #<Node:0x00000001116210f8 @data="deep", @next_node=nil>

pry(main)> list.count

#=> 2

pry(main)> list.to_string

#=> "doop deep"
Notice the key point here – the first piece of data we append becomes the Head, while the second becomes the Next Node of that (Head) node.

Iteration 2
Additional Methods - insert and prepend
Now we have nodes and a LinkedList class that manages the list. Next step is to add the insert and prepend methods.

prepend will add nodes to the beginning of the list.

insert will insert one or more elements at a given position in the list. It takes two parameters, the first one is the position at which to insert nodes, the second parameter is the string of data to be inserted.

Expected behavior:

pry(main)> require "./lib/linked_list"
#=> true

pry(main)> require "./lib/node"
#=> true

pry(main)> list = LinkedList.new
#=> #<LinkedList:0x000000010d670c88 @head=nil>

pry(main)> list.append("plop")

pry(main)> list.to_string
#=> "plop"

pry(main)> list.append("suu")

pry(main)> list.to_string
# "plop suu"

pry(main)> list.prepend("dop")

pry(main)> list.to_string
#=> "dop plop suu"

pry(main)> list.count
#=> 3

pry(main)> list.insert(1, "woo")

pry(main)> list.to_string
#=> "dop woo plop suu"


Additional Methods - find, pop, includes?
Perfect, we are almost there! Next is to add find, pop and includes? methods.

find takes two parameters, the first indicates the first position to return and the second parameter specifies how many elements to return.

includes? gives back true or false whether the supplied value is in the list.

pop removes the last element from the list and returns it.

Expected behavior:

....
pry(main)> list.to_string
#=> "deep woo shi shu blop"

pry(main)> list.find(2, 1)
#=> "shi" 

pry(main)> list.find(1, 3)
#=> "woo shi shu"

pry(main)> list.includes?("deep")
#=> true

pry(main)> list.includes?("dep")
#=> false

pry(main)> list.pop
#=> "blop"

pry(main)> list.pop
#=> "shu"

pry(main)> list.to_string
#=> "deep woo shi"

Beat Box
Iteration 3
Creating the BeatBox Linked List “Wrapper”
Awesome! We have built most of our program and now it’s time to wrap the Linked List logic in a BeatBox class.

When we create a new instance of the BeatBox class, a LinkedList object is also instantiated and available as an attribute on the BeatBox instance. Now, we can manage our linked list through the BeatBox class.

Up until now, we have only been able to append and prepend a single node at a time. The LinkedList class hasn’t formatted the data it received, consequently, passing the string “deep bop dop” to append has resulted in one node created with data deep bop dop. With BeatBox as an extra layer, it can take care of properly formatting the data (eg: splitting the string) before passing it down to the LinkedList. This implementation results in three nodes appended to the list if we pass the string “deep bop dop” to BeatBox#append.

Expected behavior:

pry(main)> require "./lib/beat_box"
#=> true

pry(main)> require "./lib/linked_list"
#=> true

pry(main)> require "./lib/node"
#=> true

pry(main)> bb = BeatBox.new
#=> #<BeatBox:0x000000010f500108 @list=#<LinkedList:0x000000010f4e3ee0 @head=nil>>

pry(main)> bb.list
#=> #<LinkedList:0x000000010f4e3ee0 @head=nil>

pry(main)> bb.list.head
#=> nil 

pry(main)> bb.append("deep doo ditt")

pry(main)> bb.list.head.data
#=> "deep"

pry(main)> bb.list.head.next_node.data
#=> "doo"

pry(main)> bb.append("woo hoo shu")

pry(main)> bb.count
#=> 6


Playing Beats
Now that we have our BeatBox class put together using the internal Linked List to keep track of our beats, let’s use it to actually play the beats.

Remember that, at the command line, we can play sounds using the say command:

$ say -r 500 -v Boing "ding dah oom oom ding oom oom oom ding dah oom oom ding dah oom oom ding dah oom oom "
It turns out we can also easily issue this command (or any other system command) from ruby by using backticks: ```.

For example:

$ pry
> `say -r 500 -v Boing "ding dah oom oom ding oom oom oom ding dah oom oom ding dah oom oom ding dah oom oom "`
Additionally, we can use standard string interpolation (#{}) to pass dynamic content into a system command:

$ pry
> beats = "ding dah oom oom ding oom oom oom ding dah oom oom ding dah oom oom ding dah oom oom "
> `say -r 500 -v Boing #{beats}`
For this final section, add a play method to your BeatBox class that will generate the string content of the Beat and use it as input to the say command.

pry(main)> require "./lib/beat_box"
#=> true

pry(main)> require "./lib/linked_list"
#=> true

pry(main)> require "./lib/node"
#=> true

pry(main)> bb = BeatBox.new
#=> #<BeatBox:0x000000010f500108 @list=#<LinkedList:0x000000010f4e3ee0 @head=nil>>

pry(main)> bb.append("deep doo ditt woo hoo shu")

pry(main)> bb.count
#=> 6

pry(main)> bb.list.count
#=> 6

pry(main)> bb.play
#=> # plays the sounds deep doo ditt woo hoo shu
