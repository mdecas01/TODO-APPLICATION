require './todo_item'

class TodoList

  attr_reader :name, :todo_items

  def initialize(name)
    @name = name
    @todo_items = []
  end

  #Creates a new TodoItem object and adds it to the todo_items list
  def add_item(name)
    todo_items.push(TodoItem.new(name))
    puts "adding #{name} task..."
  end

  #Removes an item form the todo_items list
  def remove_item(name)
    index = find_index(name)
    if index
      todo_items.delete_at(index)
      puts "deleting #{name} task..."
      return true
    else
      return false
    end
  end

  #Changes the complete value in the item from false to true
  def mark_complete(name)
    if index = find_index(name)
      item = todo_items[index]
      item.mark_complete!
      puts "Marking #{item.name} as complete..."
    else
      puts "Could not find #{name} task."
    end
  end

  #Returns the index of an element inside the todo_list
  def find_index(name)
    index = 0
    found = false
    todo_items.each do |item|
      if item.name == name
        found = true
        break
      else
        index += 1
      end
    end
    if found
      index
    end
  end

  #Prints the list and its items.
  #The items are displayed according to the argument passed to the function
  #The default argument value is 'all', which will display all the tasks in the list
  #The list can also display only the complete tasks by passing 'complete' as the argument,
  #or only the imcomplete tasks by passing 'imcomplete' as the argument.
  def print_list(kind='all')
    puts "#{name} list - #{kind} items."
    puts "-" * 30
    todo_items.each do |item|
      case kind
        when 'all'
          puts "#{item}"
        when 'complete'
          puts "#{item}" if item.complete?
        when 'imcomplete'
          puts "#{item}" if !item.complete?
      end
      puts "\n"
    end
  end
end
