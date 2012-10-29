require '../list'


describe "Single linked list" do

  context "test object " do

		before(:all) do
		  @data = "Element 1"
		  @node = Node.new(@data)
		  @list = List.new
		  @list.add(@node)
		end
		
	     it " - First node" do
          @list.start_element.data == @data
        end
	
   end
	


end
