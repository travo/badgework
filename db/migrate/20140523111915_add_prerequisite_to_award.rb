class AddPrerequisiteToAward < ActiveRecord::Migration
  def change
    add_column :awards, :prerequisite_id, :integer
  end
end
