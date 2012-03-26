class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.references :troop

      t.timestamps
    end
    add_index :sections, :troop_id
  end
end
