class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :registration_number
      t.date :date_birth
      t.references :troop
      t.references :section

      t.timestamps
    end
    add_index :members, :troop_id
    add_index :members, :section_id
  end
end
