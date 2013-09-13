require 'faker'
require_relative '../config/application.rb'

def fake_words
  Faker::Lorem.words(2..8)
end

30.times do
  Task.create(tasks: "#{fake_words}", finished: false)
end
30.times do 
  Todo.create
end

