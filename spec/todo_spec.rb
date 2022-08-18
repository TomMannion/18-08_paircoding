require 'todo'

describe Todo do
  
  it "Initializes todo" do
    todo_list = Todo.new
  end

  it "adds a task" do
    todo_list = Todo.new
    todo_list.add("Walk the dog")
  end

  it "returns list of todos" do
    todo_list = Todo.new
    todo_list.add("Walk the dog")
    todo_list.add("Walk the cat")
    expect(todo_list.all).to eq ["Walk the dog", "Walk the cat"]
  end

  it "marks the task as done and removes the task" do
    todo_list = Todo.new
    todo_list.add("Walk the dog")
    todo_list.add("Walk the hamster")
    todo_list.add("Walk the cat")
    todo_list.mark_as_done("Walk the hamster")
    expect(todo_list.all).to eq ["Walk the dog", "Walk the cat"]
  end

end