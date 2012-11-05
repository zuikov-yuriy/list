require '../list'

describe "Single linked list" do

  let(:l) { List.new }

  describe "#initialize" do
    it "should be initialized as empty list" do
      List.new.should be_true
    end
  end

  describe "#add method test" do

    it "should be first and end element in list equal created object NODE" do
      @node = mock('Node')
      @node.stub(:data){"Element1"}
      @node.stub(:go){nil}
      l.add(@node)
      l.start_element.data.should eq("Element1")
      l.end_element.data.should eq("Element1")
    end

    it "should increase count by 1" do
      expect{l.add(@node)}.to change{l.count}.by(1)
    end

    it "should raise an exception if called with no params" do
      lambda { l.add }.should raise_error(ArgumentError, "wrong number of arguments (0 for 1)")
    end

  end

end