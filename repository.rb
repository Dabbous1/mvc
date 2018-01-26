require_relative "task"

class Repository
  attr_reader :tasks

  def initialize
    # STATE
    @tasks = []
  end

  # BEHAVIOR
  def add(task_name)
    task = Task.new(task_name)
    @tasks << task
  end

  def find(index)
    @tasks[index]
  end

  def remove(index)
    @tasks.delete_at(index)
  end

  # def delete_last_task
  #   @tasks.pop
  # end
end
