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




class List

   attr_reader :start_element, :end_element, :count

   def initialize
      @count = 0
      #@size = 5
   end 

   def add(obj)
      if @count == 0
         @start_element = obj
	     @count += 1
      else
	     @end_element.link obj
		 @count += 1
      end	 
    @end_element = obj 
   end

   
   
   def first
      1
   end
   
   
   

   def view_next(obj)
      @this = obj

        puts "SELECT ELEMENT"
	     puts "#{@this.data}"

	 if @this == @end_element
	    puts "END ELEMENT"
	  else
	    puts "NEXT ELEMENT"
		puts " #{@this.go.data}"
	 end 
	 
   end
 

   def all
     @obj = nil
	  
     loop do
         if @obj == nil
	       @data = @start_element
	       @obj = @start_element.go
	      else  
 	       @data = @obj
	       @obj = @obj.go
	     end
			
	    puts @data.data
	   
           break if @data == @end_element
      end
   end

end


node1 = Node.new('ELEMENT - 1')
node2 = Node.new('ELEMENT - 2')
node3 = Node.new('ELEMENT - 3')

list = List.new
list.add(node1)
list.add(node2)
list.add(node3)





#puts list.count
#list.view_next(node5)
#puts list.all
#puts list.start_element.data
#puts list.end_element .data
#puts node2.go.data
#puts node5.go




