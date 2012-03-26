class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.integer :order
      t.references :activity
      t.references :task

      t.timestamps
    end
    add_index :tasks, :activity_id
    add_index :tasks, :task_id
  end
end
