class ChangeRequiredDefaults < ActiveRecord::Migration
  def change
    change_column :activities, :required, :boolean, default: true, null: false
    change_column :tasks,      :required, :boolean, default: true, null: false
  end
end
