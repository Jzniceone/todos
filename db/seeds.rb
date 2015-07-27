require_relative "../config/application"
require_relative "../app/models/task"
require 'faker'

    15.times do
      new_task1 = Task.create
      new_task1.text = Faker::Lorem.sentence
      new_task1.complete = false
      new_task1.save
    end