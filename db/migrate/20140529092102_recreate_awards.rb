class RecreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.references :target
      t.references :member
      t.timestamps
    end
  end
end

