class AddActivityRequirementToAwards < ActiveRecord::Migration
  def change
    add_column :awards, :activity_requirement, :integer
  end
end
