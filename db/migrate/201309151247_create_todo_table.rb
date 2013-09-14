
class CreateTodoTable < ActiveRecord::Migration

  def change
    create_table :todos do |t|
      t.timestamp
    end
  end
end
