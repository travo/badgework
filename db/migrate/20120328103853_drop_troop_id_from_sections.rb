class DropTroopIdFromSections < ActiveRecord::Migration
  def up
    remove_column :sections, :troop_id
  end

  def down
    add_column :sections, :troop_id, :integer
    add_index :sections, :troop_id
  end
end
