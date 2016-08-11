require './todo_list'

todo_list = TodoList.new("Clean house")
todo_list.add_item("Bedroom")
todo_list.add_item("Bathroom")
todo_list.add_item("Kitchen")

todo_list.mark_complete("Bedroom")
todo_list.mark_complete("Toilet")

puts "DISPLAYING LIST..."
todo_list.print_list

puts "DISPLAYING COMPLETED TASKS..."
todo_list.print_list("completed")

puts "DISPLAYING IMCOMPLETE TASKS..."
todo_list.print_list("imcomplete")