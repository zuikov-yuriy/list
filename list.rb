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







