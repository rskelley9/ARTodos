require_relative 'config/application'
require_relative 'app/controllers/taskcontroller'

#puts "Put your application code in #{File.expand_path(__FILE__)}"

command = ARGV[0]
ARGV.shift
input = ARGV.join(' ')


case command

when 'list all'
	TaskController.list
	puts "listing all tasks"
when 'list special'
	TaskController.list.each_with_index do |task, index|
		if task.finished
			puts "#{index + 1}. #{task.task} - finished"
		else 
			puts "#{index + 1}. #{task.task}" 
		end
	end
when 'delete'
	deleted_task_number = TaskController.delete(input.to_i)
	puts "Deleted #{deleted_task_number.task} from tasks"
when 'finished'
	TaskController.finished(input.to_i)
when 'add'
	TaskController.add(input)
	puts "you have added task: #{input} to list"
	sleep(0.5)
	puts "would you like to add another? y/n"
	answer = gets.chomp
	return if answer == "n"
	loop do 
		puts "provide an input string to add"
		input_string = gets.chomp
		TaskController.add(input_string)
	end
end



