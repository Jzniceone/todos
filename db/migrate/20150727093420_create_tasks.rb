require_relative '../../config/application'

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |x|
      x.string :text
      x.boolean :complete
      x.date :completed_time

      x.timestamps null:false
    end
  end
end


