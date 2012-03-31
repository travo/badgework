class AddCachedSlugColumnToAwards < ActiveRecord::Migration
  def change
    add_column :awards, :cached_slug, :string
    add_index :awards,  :cached_slug
  end
end
