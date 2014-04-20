class ConsolidateRequirementField < ActiveRecord::Migration
  def up
    rename_column :awards,     :completion_requirement, :requirement
    rename_column :activities, :completion_requirement, :requirement
    execute('UPDATE awards     SET requirement = 0 WHERE requirement is null')
    execute('UPDATE activities SET requirement = 0 WHERE requirement is null')
    execute('UPDATE activities SET required = false WHERE required is null')
    execute('UPDATE tasks      SET required = false WHERE required is null')
    change_column :awards,     :requirement, :integer, default: 0, null: false
    change_column :activities, :requirement, :integer, default: 0, null: false
    change_column :activities, :required,    :boolean, default: false, null: false
    change_column :tasks,      :required,    :boolean, default: false, null: false
  end
  def down
    rename_column :activities, :requirement, :completion_requirement
    rename_column :awards,     :requirement, :completion_requirement
  end
end
