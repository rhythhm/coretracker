class PivotController < ApplicationController
  def index
    @core_tracker_templates = CoreTrackerTemplate.find(:all,
                       :select => "brand_name, group_name, sum(core_tracker_templates.cy_saleqty) AS sum_cy_saleqty",
                       :group => "brand_name, group_name")
  end
end
