class Node

  attr_reader :data, :go
  
  def initialize(data)
     @data = data
	 @go = nil
  end

  def link(go)
     @go = go
  end

end