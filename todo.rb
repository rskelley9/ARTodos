require_relative 'config/application'

#puts "Put your application code in #{File.expand_path(__FILE__)}"

user_input = ARGV[0]

case user_input

  when 'list'
    TaskController.list
    puts "listing all tasks"
  when 'add'
    TaskController.
