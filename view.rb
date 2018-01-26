class View
  # NO STATE, only `gets` and `puts`

  def display_list(tasks)
    if tasks.empty?
      puts "No task for now"
      return
    end

    tasks.each_with_index do |task, index|
      # if task.completed? # true or false
      #   x = "[x]"
      # else
      #   x = "[ ]"
      # end
      x = task.completed? ? "[x]" : "[ ]"
      puts "#{x} #{index + 1}- #{task.name}"
    end
  end

  def ask_user_for_name
    puts "What the task you want to achieve?"
    return gets.chomp
  end

  def ask_user_for_index
    puts "Which task?"
    return gets.chomp.to_i - 1
  end
end
