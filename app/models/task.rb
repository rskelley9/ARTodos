class Task < ActiveRecord::Base

  belongs_to :todo
  validate :task, presence: true

   def self.delete(params)
    find(:params).destroy
   end

   def self.finished?
    # if :finished == false
   end

   def self.order_by(field,direction)
    order("#{field} #{direction}")
   end

   def self.find(value)
     find(:value, :from => :id)
   end

   def self.list
    find(:all)
   end

   def self.select_range(limit_by,offset_by)
    limit(limit_by).offset(offset_by)
   end


   def self.add(value)
    create(task: value)
   end


end
