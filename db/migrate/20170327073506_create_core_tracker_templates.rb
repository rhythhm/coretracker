class CreateCoreTrackerTemplates < ActiveRecord::Migration
  def change
    create_table :core_tracker_templates do |t|

t.string :location_code
t.string :location_name
t.string :location_grade
t.string :location_type
t.string :region
t.string :default_wh
t.string :brand_name
t.string :group_name
t.string :dept_name
t.string :category
t.string :sub_cat
t.string :made_up_desc
t.string :style
t.string :color
t.integer :sizee
t.integer :mrp
t.string :item_code
t.string :ean_code
t.integer :base_stock
t.integer :soh
t.integer :arp_max
t.integer :available_qty
t.integer :intransit_qty
t.integer :tsf_expected_qty
t.integer :distro_qty
t.integer :alloc_non_grn
t.integer :open_po
t.integer :cy_saleqty
t.integer :py_saleqty
t.integer :cy_salevalue
t.integer :py_salevalue
t.integer :cy_mrp_salevalue
t.integer :py_mrp_salevalue
t.integer :last_180days_saleqty

t.timestamps null: false
    end
  end
end
