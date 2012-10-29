require '../list'
require '../node'

describe "Single linked list" do

  context "test object " do

		before(:all) do
		  @node1 = Node.new("Element 1")
		  @node2 = Node.new("Element 2")
		  @node3 = Node.new("Element 3")
		  @list = List.new
		end
		
	
	     it " - Add node in list" do
		  @list.add(@node1)
		  @list.add(@node2)
		  @list.add(@node3)
        end

		
		
	     it " - View next Element" do
		   @list.view_next(@node2)
		   @list.next_el.data.should == "Element 3"
        end
		
		
		
	     it " - View All Elements" do
          @list.all.should be_nil

        end
		
		
	
		
   end
	

end
