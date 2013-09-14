
class CreateTodoTable < ActiveRecord::Migration

  def change
    create_table :todos do |t|
      t.string :todo
      t.timestamp
    end
  end
end
