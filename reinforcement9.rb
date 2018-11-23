
class TodoList

  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

end

class Task

  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end

  #Reader
  def description
    @description
  end

  def due_date
    @due_date
  end

  #Writer
  def description=(description)
    @description = description
  end

  def due_date=(due_date)
    @due_date = due_date
  end

end

p do_homework = Task.new("Finish math homework on integers", "Nov 26")
p do_homework.description("Finish science lab")
p do_homework.due_date("tomorrow")
p write_paper = Task.new("Finish methodology section of journalism dissertation", "next week")
p do_homework2 = Task.new("Research theory of journalism as a fifth estate", "Nov 30")

# p do_homework.due_date("tomorrow")
# puts do_homework

p todo_this_week = TodoList.new
p todo_this_week.add_task(do_homework)
p todo_this_week.add_task(write_paper)
p todo_this_week.add_task(do_homework2)
puts todo_this_week.inspect
