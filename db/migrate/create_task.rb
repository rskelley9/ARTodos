require_relative '../config'

class CreateTask < ActiveRecord::Migration

  def change
    create_table :tasks do |t|
      t.belongs_to :todos
      t.string :task
      t.boolean :finished, default: false
      t.timestamp
    end
  end
end
