class AddMissingColumnToCore < ActiveRecord::Migration
  def change
    add_column :core_tracker_templates, :roh, :float
    add_column :core_tracker_templates, :soh_by_roh, :float
    add_column :core_tracker_templates, :soh_oo_roh, :float
  end
end
