require_relative '../config'

class CreateToDo < ActiveRecord::Migration

  def change
    create_table :todos do |t|
    t.has_many :tasks 
    t.string :todo
    t.timestamp
end

end
