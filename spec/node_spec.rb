require '../node'


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


end
