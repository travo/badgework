class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.text :description
      t.references :section

      t.timestamps
    end
    add_index :activities, :section_id
  end
end
