class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.references :task
      t.references :member
      t.text :signature
      t.date :completion_date

      t.timestamps
    end
    add_index :achievements, :task_id
    add_index :achievements, :member_id
  end
end
