

class CreateTaskTable < ActiveRecord::Migration

  def change
    create_table :tasks do |t|
      t.belongs_to :todo
      t.string :task
      t.boolean :finished, default: false
      t.timestamp
    end
  end
end
