class Todo

  def initialize
    @todo_list = []
  end

  def add(task)
    @todo_list << task
  end

  def mark_as_done(task)
    @todo_list.delete(task)
  end

  def all
    return @todo_list
  end

end