class PivotController < ApplicationController
  def index
    @table = {}
    if params[:group_name]
      table = "group_name, "
    else
      table = " "
    end

    if params[:brand_name]
      table = table + "brand_name, "
    else
      table = table + " "
    end

    if params[:store_code]
      table = table + "store_code, "
    else
      table = table + " "
    end

    if params[:item_code]
      table = table + "item_code, "
    else
      table = table + " "
    end

    if params[:style]
      table = table + "style, "
    else
      table = table + " "
    end

    table = table.strip

    if table.empty?
      @default = 'on'
    else
      @default = 'off'

      table = table[0..-2]
    end

    @core_tracker_templates = CoreTrackerTemplate.find(:all,
                       :select => "brand_name, group_name,
                       sum(core_tracker_templates.cy_saleqty) AS sum_cy_saleqty,
                       sum(soh) AS sum_soh,
                       sum(last_180days_saleqty) AS sum_last_180days_saleqty,
                       GROUP_CONCAT(last_180days_saleqty, ',') AS single_last_180days_saleqty,
                       GROUP_CONCAT(soh, ',') AS single_soh,
                       GROUP_CONCAT(open_po, ',') AS single_open_po, count(arp_max>0) AS count_of_arp",
                       :group => "#{table}")

    @count_of_arp = CoreTrackerTemplate.where('arp_max > 0').count
    @count_of_arp_soh = CoreTrackerTemplate.where('arp_max > 0 AND soh > 0').count
    @zero_arp = CoreTrackerTemplate.where('arp_max = 0').find(:all,
                       :select => "brand_name, group_name, category, style, color, sizee, item_code, arp_max, soh")
    @soh_lessthan_arp = CoreTrackerTemplate.where('soh < arp_max').find(:all,
                       :select => "brand_name, group_name, category, style, color, sizee, item_code, arp_max, soh")


  end
end


# sum(soh_by_roh) AS sum_soh_by_roh,
  #                     sum(soh_oo_roh) AS sum_soh_oo_roh
