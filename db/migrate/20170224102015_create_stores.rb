class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :store_code
      t.string :lfl_flag
      t.string :store_grade
      t.string :store_location
      t.string :store_region
      t.string :store_state
      t.string :store_warehouse_name
      t.integer :store_warehouse_code
      t.string :season_type
      t.references :brand
      t.references :category
      t.references :group
     

      t.timestamps null: false
    end
  end
end
