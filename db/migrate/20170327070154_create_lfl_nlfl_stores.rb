class CreateLflNlflStores < ActiveRecord::Migration
  def change
    create_table :lfl_nlfl_stores do |t|
    	t.string :store_code
    	t.string :store_name
    	t.string :store_type
    	t.string :lfl_flag

    	#Store	Store Name	Store Type	LFL Flag


      t.timestamps null: false
    end
  end
end


