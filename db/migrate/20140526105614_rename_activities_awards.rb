class RenameActivitiesAwards < ActiveRecord::Migration
  def up
    rename_table :awards, :targets
    rename_table :activities_awards, :activities_targets
    rename_column :activities_targets, :award_id, :target_id
  end
  def down
    rename_column :activities_targets, :target_id, :award_id
    rename_table :activities_targets, :activities_awards
    rename_table :targets, :awards
  end
end
