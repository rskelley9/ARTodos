require 'faker'

class CreateList < ActiveRecord::Migration

  def fake
    Faker::Lorem.sentence(sentence_count * 3)
  end

  # def make_task
  #   30.times do
  #     Task.create(tasks: "#{make_fake}", finished: false)
  #     end
  #     30.times do 
  #       Todo.create
  #     end
  #   end
  # end


  def make_task
    30.times do
      Task.create(tasks: "#{make_fake}", finished: false)
    end
    30.times do 
      Todo.create
    end
  end
end
