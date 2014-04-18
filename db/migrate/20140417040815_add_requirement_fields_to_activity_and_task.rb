class AddRequirementFieldsToActivityAndTask < ActiveRecord::Migration
  def change
    add_column :activities, :completion_requirement, :integer
    add_column :tasks, :required, :boolean, default: false
    rename_column :awards, :activity_requirement, :completion_requirement
  end
end
