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

    if params[:category]
      table = table + "category, "
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
                       :select => "brand_name, group_name, category, item_code, style,
                       sum(core_tracker_templates.cy_saleqty) AS sum_cy_saleqty,
                       sum(soh) AS sum_soh,
                       sum(last_180days_saleqty) AS sum_last_180days_saleqty,
                       GROUP_CONCAT(last_180days_saleqty, ',') AS single_last_180days_saleqty,
                       GROUP_CONCAT(soh, ',') AS single_soh,
                       GROUP_CONCAT(open_po, ',') AS single_open_po, count(arp_max>0) AS count_of_arp",
                       :group => "#{table}")


    @data_to_show = []
    @core_tracker_templates.each do |core_tracker_template|

    end
    respond_to do |format|
      format.html
      format.csv { send_data @final_plans.to_csv }
    end
  end

  def pivot2
    @zero_arp = CoreTrackerTemplate.where('arp_max = 0').find(:all,
                       :select => "brand_name, group_name, category, style, color, sizee, item_code, arp_max, soh")
    @soh_lessthan_arp = CoreTrackerTemplate.where('soh < arp_max').find(:all,
                       :select => "brand_name, group_name, category, style, color, sizee, item_code, arp_max, soh")

  end

  def pivot2
    @zero_arp = CoreTrackerTemplate.where('arp_max = 0').find(:all,
                       :select => "brand_name, group_name, category, style, color, sizee, item_code, arp_max, soh")
    @soh_lessthan_arp = CoreTrackerTemplate.where('soh < arp_max').find(:all,
                       :select => "brand_name, group_name, category, style, color, sizee, item_code, arp_max, soh")

  end

  def pivot3
    @zero_arp = CoreTrackerTemplate.where('arp_max = 0').find(:all,
                       :select => "brand_name, group_name, category, style, color, sizee, item_code, arp_max, soh")
    @soh_lessthan_arp = CoreTrackerTemplate.where('soh < arp_max').find(:all,
                       :select => "brand_name, group_name, category, style, color, sizee, item_code, arp_max, soh")

  end

  def pivot4
    @zero_arp = CoreTrackerTemplate.where('arp_max = 0').find(:all,
                       :select => "brand_name, group_name, category, style, color, sizee, item_code, arp_max, soh")
    @soh_lessthan_arp = CoreTrackerTemplate.where('soh < arp_max').find(:all,
                       :select => "brand_name, group_name, category, style, color, sizee, item_code, arp_max, soh")

  end

end

