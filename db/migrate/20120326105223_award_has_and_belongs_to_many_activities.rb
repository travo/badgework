class AwardHasAndBelongsToManyActivities < ActiveRecord::Migration
  def change
    create_table :awards_activities do |t|
      t.references :awards
      t.references :activities
    end
    add_index :awards_activities, :awards_id
    add_index :awards_activities, :activities_id
  end
end
