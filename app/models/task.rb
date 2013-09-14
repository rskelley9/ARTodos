require_relative '../../config/application.rb'

class Task < ActiveRecord::Base

  belongs_to :todo
  validate :task, presence: true

  def self.delete(task_num)
    all[num].destroy
  end

  def self.finished?
    # if :finished == false
  end

  def self.order_by(field,direction)
    all.order("#{field} #{direction}")
  end

  def self.find(task_num)
    find(task_num)
  end

  def self.first
    first
  end

  def self.last
    last
  end

  def self.list
    find(:all)
  end

  def self.select_range(limit_by,start)
    limit(limit_by).offset(start)
  end


  def self.add(task_string)
    create(task: "#{task_string}")
  end


  def self.mark_finished(task_num)
    finished_task = all[task_num]
    finished_task.update(finished: true)
    finished_task.save
  end

end

# self.find(:all)

 #   self.first

 # self.find().destroy

  #   self.find

  #   self.last

  #   self.order

  #   self.last.destroy
