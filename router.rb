class Router
  # calling the right action from the controller
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      list_actions
      action = gets.chomp.to_i
      puts action
      continue = dispatch(action)
      unless continue
        # stop the loop
        puts "Bye!"
        break
      end
    end
  end

  def dispatch(action)
    case action
    when 1
      @controller.list
      return true
    when 2
      @controller.create
      return true
    when 3
      @controller.mark_as_complete
      return true
    when 4
      @controller.delete
      return true
    when 5
      return false
    else
      puts "I don't understand"
      return true
    end
  end

  def list_actions
    puts "What's next?"
    puts "1 - List tasks"
    puts "2 - Add new task"
    puts "3 - Mark task as done"
    puts "4 - Remove a task"
    puts "5 - Quit"
  end
end
