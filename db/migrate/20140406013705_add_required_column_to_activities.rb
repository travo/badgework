class AddRequiredColumnToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :required, :boolean, default: false
  end
end
