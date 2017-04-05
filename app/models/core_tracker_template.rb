class CoreTrackerTemplate < ActiveRecord::Base

  def roh
    (self.last_180days_saleqty / 180)
  end

  def soh_by_roh
    if self.last_180days_saleqty == 0
     return 0
   else
     (self.soh / self.last_180days_saleqty * 180)
   end
  end

  def soh_oo_roh
    if self.last_180days_saleqty == 0
     return 0
   else
     (self.soh + self.open_po ) / self.last_180days_saleqty * 180
   end
  end

end
