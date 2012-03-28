class RenameAwardsActivities < ActiveRecord::Migration
  def up
    rename_table :awards_activities, :activities_awards
  end

  def down
    rename_table :activities_awards, :awards_activities
  end
end
