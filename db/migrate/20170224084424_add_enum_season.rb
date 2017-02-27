class AddEnumSeason < ActiveRecord::Migration
  def change
  	add_column :seasons, :season_type_cd, :integer
  	add_column :stores, :season_type_cd, :integer
    add_column :styles, :season_type_cd, :integer
  end
end
