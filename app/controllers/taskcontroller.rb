require_relative 'config/application'

puts "Put your application code in #{File.expand_path(__FILE__)}"

class TaskController < ActiveRecord::Base 


  def self.add(params)
    Task.add(params)
  end

  def self.delete()
    Task.delete()
  end

  def self.list
    Task.list
  end
end
