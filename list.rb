class List

   attr_reader :start_element, :end_element, :count, :next_el

   def initialize
      @count = 0
      #@size = 5
   end 

   
   def add(obj)
      if @count == 0
         @start_element = obj
	     @count += 1
      else
	     @end_element.next obj
		 @count += 1
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
	    @next_el = @this.go;
	    puts "NEXT ELEMENT"
		puts " #{@next_el.data}"
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
             

	          puts "#{@data.data}"

			 
	     if @data  == @end_element
		   exit    #break
		 end
           
      end
   end

end







