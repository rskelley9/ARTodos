require 'faker'

class CreateList < ActiveRecord::Migration

  # def make_file
  #   Faker::Lorem.sentence(sentence_count * 3)
  # end

  def make_task
    30.times do
      Task.create(tasks: Faker::Lorem.words(2..8), finished: false)
      # 30.times do 
      #   Todo.create
      # end
    end
  end
end
