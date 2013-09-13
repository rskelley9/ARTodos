class ToDo < ActiveRecord::Base


  validate :task, presence: true

  def self.delete(number)
    all(:number).destroy
  end

  def self.list
    find(:all)
  end

  def self.add(stuff)
    create(task: stuff)
  end

  has_many :Tasks

end
