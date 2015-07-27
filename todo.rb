require_relative 'config/application'
require_relative 'app/controllers/function'
require_relative 'app/views/todo_views'

class Commands
  def self.start
  command = ARGV
  task = command[0]
  new_task = command[(1..-1)].join (" ")
  case
    when task == "add"
      Function.add(new_task)
    when task == "list"
      Function.list
    when task == "delete"
     Function.delete(new_task)
    when task == "complete"
      Function.complete(new_task)
    else
     TodoView.error_message
    end
  end
end

Commands.start