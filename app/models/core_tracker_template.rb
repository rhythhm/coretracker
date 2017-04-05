class CoreTrackerTemplate < ActiveRecord::Base

  def roh
    (self.last_180days_saleqty / 180)
  end

  def soh_by_roh
    if last_180days_saleqty == 0
     return 0
   else
     (soh / last_180days_saleqty * 180)
   end
  end

  def soh_oo_roh
    if last_180days_saleqty == 0
     return 0
   else
     (soh + open_po ) / last_180days_saleqty * 180
   end
  end

end
