require_relative '../config/application'

require_relative '../models/task.rb'

puts "Put your application code in #{File.expand_path(__FILE__)}"

class TaskController < ActiveRecord::Base 


  def self.add(task)
    Task.add(task)
  end

  def self.finished_task(task_number)
    Task.mark_finished(task_number)
  end


  def self.find_by_id(id)
    Task.find(id)
  end

  def self.return_first
    Task.first
  end

  def self.return_last
    Task.last
  end

  def self.delete(task_num)
    Task.delete(task_num)
  end

  def self.list
    Task.list.to_a
  end

end
