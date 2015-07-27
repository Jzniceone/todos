require_relative "../views/todo_views"
require "byebug"

class Function
  def self.list
    array = Function.find_position
    TodoView.list_display(array)
  end


  def self.add(new_task)
    task = Task.create(text: new_task, complete: false)
    TodoView.add_display(task)
  end

  def self.delete(num)
    array = find_position
    a = num.to_i - 1
    task = array[a]
    x = Task.find(task[:id])
    if array.index(a).nil?
      # byebug
      TodoView.delete_display_error_message
    else
      x.destroy
      deleted_task = x.text
      TodoView.delete_display(deleted_task)
     end
  end

  def self.complete
    @task.each do |check|
      task_index = check
      t = Task.find_by_id(task_index)
      t.update_attribute(:complete, true)
    end
  end

  def self.find_position
    array = []
    Task.all.each_with_index do |task, index|
      array << Hash[id: task.id, text: task.text, complete: task.complete]
    end
    array
  end
end
