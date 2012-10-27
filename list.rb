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
           @list.each do |link_next, el| 
              if el == element
		   key = @list.index [link_next, el] 
		   puts "KEY - #{key}     NEXT LINK - #{link_next}     VALUE - #{el} "
              end
           end
	end

       
        def nextt=(element)
           puts "               NEXT ELEMENT           "
           @list.each do |link_next, el| 
              if el == element
		   key = @list.index [link_next, el] 
                   key += 1
		   puts "#{@list[key]}"
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


#nextt=('element3')
#go=('element3')

list.all
