class Task < ActiveRecord::Base


  validate :task, presence: true

   def self.delete(params)
    find(:params).destroy
   end

   def self.finished?
    if :finished == false
   end

   def self.find(params)
     find(:params, :from => :id)
    end

   def self.list
    find(:all)
   end

   def self.add(stuff)
    create(task: stuff)
   end

   belongs_to :Todo

end
