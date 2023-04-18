# As a user
# So that I can keep track of my tasks
# I want a program that I can add todo tasks to and see a list of them.

# As a user
# So that I can focus on tasks to complete
# I want to mark tasks as complete and have them disappear from the list.

class TodoTracker
  def initialize
    @list = []
  end

  def add_todo(task)
    @list << task
  end

  def list
    @list.join(", ")
  end

  def complete(task)
    fail "Task does not exist" unless @list.include? task
    @list.delete(task)
  end
end
