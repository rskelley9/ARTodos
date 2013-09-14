require 'faker'

list = Todo.create

30.times do
  list.tasks.create(task: Faker::Lorem.sentence(sentence_count = 3), finished: false)
end

