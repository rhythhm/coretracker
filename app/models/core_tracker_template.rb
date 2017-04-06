class CoreTrackerTemplate < ActiveRecord::Base

  def roh
    (self.last_180days_saleqty.to_f / 180.00)
  end

  def soh_by_roh
    if self.last_180days_saleqty.to_f == 0
     return 0
   else
     (self.soh / self.last_180days_saleqty.to_f * 180.00)
   end
  end

  def soh_oo_roh
    if self.last_180days_saleqty.to_f == 0
     return 0
   else
     (self.soh + self.open_po.to_f ) / self.last_180days_saleqty.to_f * 180.00
   end
  end

end
