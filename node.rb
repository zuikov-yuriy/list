class Node

  attr_reader :data, :go
  
  def initialize(data)
     @data = data
	 @go = nil
  end

  def next(go)
     @go = go
  end

end