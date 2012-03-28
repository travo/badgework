class RepairActivitiesAwardsTable < ActiveRecord::Migration
  def change
    drop_table :activities_awards
    create_table :activities_awards do |t|
      t.references :award
      t.references :activity
    end
    add_index :activities_awards, :award_id
    add_index :activities_awards, :activity_id
  end
end
