require_relative "view"

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def list
    # get the tasks from the repo
    tasks = @repository.tasks
    # give the tasks to the view, to display them
    @view.display_list(tasks)
  end

  def create
    # ask the view what the new task
    task_name = @view.ask_user_for_name
    # ask the repo to create the task
    @repository.add(task_name)
    # TODO: tell the user
  end

  def mark_as_complete
    # ask the user what task (index)
    index = @view.ask_user_for_index
    list
    # get the task
    task = @repository.find(index)
    # mark the task as complete
    task.mark_as_complete!
    # TODO: tell the user
  end

  def delete
    # ask the user which task
    index = @view.ask_user_for_index
    list
    # delete the task from the repository
    @repository.remove(index)
    # TODO: tell the user
  end
end
