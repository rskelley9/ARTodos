require_relative 'config/application'

puts "Put your application code in #{File.expand_path(__FILE__)}"

class TodoController

  def self.add(params)
    Todo.add(params)
  end
  
  def self.delete
    Todo.delete
  end
  
  def self.list
    Todo.list
  end
end
