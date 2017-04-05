class CoreTrackerTemplate < ActiveRecord::Base

  def ROS
   (last_180days_saleqty /180)
  end

  def SOHbyROS
    if last_180days_saleqty == 0
      return 0
    else
      ((soh / last_180days_saleqty ) *180)
    end
  end



  def SOH_OO_ROS
    if last_180days_saleqty == 0
      return 0
    else
      ((soh + open_po )/ last_180days_saleqty * 180)
    end
  end



end
