class CreateSeasons < ActiveRecord::Migration
  def change

        
    create_table :seasons do |t|
        t.string :season_type
    	t.string :year
    	t.integer :quantity
    	t.float :net_of_sales
    	t.float :dmrp
    	t.float :mrp
    	t.float :cost_price
    	t.float :not_mix
    	t.references :category
        t.references :brand
        t.references :group
      t.timestamps null: false
    end
  end
end
