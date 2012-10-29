class Node
  attr_reader :data, :go
  def initialize(data)
     @data = data
  end
  def link(go)
     @go = go
  end
end




class List

attr_reader :start_element, :end_element

   def initialize
     @head = 0
	 #@size = 5
   end 

   def add(obj)

     if @head == 0
          obj.link 0
		  @start_element = obj
		  @head = 1
	   else
	      @end_element.link obj
	      obj.link 0
	  end	 
	  
	 @end_element = obj
	 
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
   
   
   def start(el)
   end
   
   
   
   def all
         @start = @start_element
		 @end = @end_element
         @obj = nil
		 
		 loop do
		   if @obj == nil
		       @data = @start
			   @obj = @start.go
		   else  
 		       @data = @obj
			   @obj = @obj.go
		   end
			
			puts @data.data
			
			     @e = @data
	
		    break if @e == @end

		end

   end

   
   
   
   

end




node1 = Node.new('ELEMENT - 1')
node2 = Node.new('ELEMENT - 2')
node3 = Node.new('ELEMENT - 3')
node4 = Node.new('ELEMENT - 4')
node5 = Node.new('ELEMENT - 5')

list = List.new
list.add(node1)
list.add(node2)
list.add(node3)
list.add(node4)
list.add(node5)






#list.all

list.view_next(node5)



#puts list.all

#puts list.start_element.data
#puts list.end_element .data



#puts node2.go.data