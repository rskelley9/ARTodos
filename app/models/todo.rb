class Todo < ActiveRecord::Base

  
  has_many :tasks

  def self.delete(number)
    all(:number).destroy
  end

  def self.list
    find(:all)
  end

  def self.add(stuff)
    create(task: stuff)
  end


end
