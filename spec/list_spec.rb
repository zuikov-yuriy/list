require '../list'


describe "Single linked list" do

  context "test object Node" do

		before(:all) do
		  @data = "Element 1"
		  @node = Node.new(@data)
		end
		
		it "creat object NODE true" do
          @node.should be_true
        end
		
		it "test data" do
		  @node.data.should == @data
		end
		
		it "test link" do
		   @node.go.should be_nil
		end

   end
	
	
  context " - test object List" do

  
		before(:all) do
		  @list = List.new
		end
		
		it " - creat object LIST true" do
          @list.should be_true
        end
		
		it " - Add node to list" do
          @list.add(@node)
        end
		
		it " - First node" do
          @list.start_element.data == "Element 1"
        end
		
		
   end
	

end
