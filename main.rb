require_relative  'node'
require_relative  'list'







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