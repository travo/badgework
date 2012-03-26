class AlterActivitiesAddOrderColumn < ActiveRecord::Migration
  def up
    add_column :activities, :order, :integer
  end

  def down
    remove_column :activities, :order
  end
end
