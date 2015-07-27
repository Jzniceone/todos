require_relative "../controllers/function"

class TodoView
  def self.list_display(array)

    array.each_with_index do |task, index|
      completed = if task[:complete]
       "[x]"
      else
       "[ ]"
      end
     puts "#{completed} #{index + 1}. #{task[:text]}"
    end
  end

  def self.add_display(new_task)
    puts "Appended \"#{new_task.text}\" to your TODO list..."
  end

  def self.delete_display(deleted_task)
    puts "Deleted \"#{deleted_task}\" from your TODO list..."
  end

  def self.delete_display_error_message
    puts "Nothing exist bro, try again!"
  end

  def self.error_message
     puts "Damn, don't use TODO if you don't know how to use!"
  end

end