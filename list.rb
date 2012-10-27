class List

	def initialize
	  @list = []
          @link = 0
	end



        def add=(el)
          @link += 1
          @list << [@link, el]
	end
    

        def theend
          @list << [0,'nil']
        end


	def all
            puts "               ALL LIST            "
            @list.each do |link_next, el| 
                key = @list.index [link_next, el] 
		puts "KEY - #{key}     NEXT LINK - #{link_next}     VALUE - #{el} "
	    end
	end



        def go=(element)
           puts "            SELF ELEMENT           "
           @list.each do |link_next, el| 
              if el == element
		   key1 = @list.index [link_next, el] 
		   puts "KEY - #{key1}     NEXT LINK - #{link_next}     VALUE - #{el} "
              end
           end
	end

       
        def nextt=(element)

           self.go=(element)
           

           puts "               NEXT ELEMENT           "
           @list.each do |link_next, el| 
              if el == element
		   # puts "#{@list[link_next]}"
                   puts "KEY - #{link_next}     NEXT LINK - #{@list[link_next][0]}     VALUE - #{@list[link_next][1]} "
              end
           end
	end




end

list = List.new

list.add=('element1')
list.add=('element2')
list.add=('element3')
list.add=('element4')
list.theend


list.nextt=('element3')


