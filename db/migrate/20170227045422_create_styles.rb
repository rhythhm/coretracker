class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
    	t.string :name
    	t.integer :style_number
      t.integer :item_code
      t.string :color
      t.string :made_up_desc
      t.string :sub_category
      t.string :season_type
      t.string :size
      t.string :mrp
      t.integer :SOH
      t.integer :ARP
      t.integer :sale_qty
      t.integer :cy_salevalue
      t.integer :py_salevalue
       t.integer :cy_mrp_salevalue
      t.integer :py_mrp_salevalue
      t.references :store
      t.references :brand
      t.references :category
      t.references :group

      t.timestamps null: false
    end
  end
end
