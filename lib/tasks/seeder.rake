namespace :seeder do
  desc "Seed the db with Brand values"
  task seed_db_brands: :environment do
    CSV.foreach(File.open("brands.csv", "r")).each do |row|
      brand_name = row[6]
      group_name = row[7]
      if Brand.where(name: brand_name).count == 0
        Brand.create(name: brand_name)
      end
    end
  end


  desc "Seed the db with lfl flag values"
  task seed_db_lfl_nlfl_stores: :environment do
    CSV.foreach(File.open("lfl.csv", "r")).each do |row|
      store_code = row[0]
      store_name = row[1]
      store_type =row[2]
      lfl_flag =row[3]

     # Store Store Name  Store Type  LFL Flag #THis font-size is okay? Or kyeamamh  ykeaarun? this be fine. Auto save aa gaya :D hshshs

      if LflNlflStore.where(store_code: store_code, store_name: store_name, store_type: store_type, lfl_flag: lfl_flag).count == 0
        LflNlflStore.create(store_code: store_code, store_name: store_name, store_type: store_type, lfl_flag: lfl_flag)
      end
    end
  end


desc "Seed the db with core tracker template values"
  task seed_db_core_tracker_templates: :environment do
    CSV.foreach(File.open("ctt.csv", "r")).each do |row|

      location_code = row[0]

location_name =row[1]
location_grade =row[2]
location_type =row[3]
region =row[4]
default_wh =row[5]
brand_name =row[6]
group_name =row[7]
dept_name =row[8]
category =row[9]
sub_cat =row[10]
made_up_desc =row[11]
style =row[12]
color =row[13]
sizee =row[14]
mrp =row[15]
item_code =row[16]
ean_code =row[17]
base_stock =row[18]
soh =row[19]
arp_max =row[20]
available_qty =row[21]
intransit_qty =row[22]
tsf_expected_qty =row[23]
distro_qty =row[24]
alloc_non_grn =row[25]
open_po =row[26]
cy_saleqty =row[27]
py_saleqty =row[28]
cy_salevalue =row[29]
py_salevalue =row[30]
cy_mrp_salevalue =row[31]
py_mrp_salevalue =row[32]
last_180days_saleqty =row[33]




     # Store Store Name  Store Type  LFL Flag

      if CoreTrackerTemplate.where(location_code:  location_code,
location_name: location_name,
location_grade:  location_grade,
location_type: location_type,
region:  region,
default_wh:  default_wh,
brand_name:  brand_name,
group_name:  group_name,
dept_name: dept_name,
category: category,
sub_cat: sub_cat,
made_up_desc:  made_up_desc,
style: style,
color: color,
sizee: sizee,
mrp: mrp,
item_code: item_code,
ean_code:  ean_code,
base_stock:  base_stock,
soh: soh,
arp_max: arp_max,
available_qty: available_qty,
intransit_qty: intransit_qty,
tsf_expected_qty:  tsf_expected_qty,
distro_qty:  distro_qty,
alloc_non_grn: alloc_non_grn,
open_po: open_po,
cy_saleqty:  cy_saleqty,
py_saleqty:  py_saleqty,
cy_salevalue:  cy_salevalue,
py_salevalue:  py_salevalue,
cy_mrp_salevalue:  cy_mrp_salevalue,
py_mrp_salevalue:  py_mrp_salevalue,
last_180days_saleqty:  last_180days_saleqty).count == 0

CoreTrackerTemplate.create(location_code:  location_code,
location_name: location_name,
location_grade:  location_grade,
location_type: location_type,
region:  region,
default_wh:  default_wh,
brand_name:  brand_name,
group_name:  group_name,
dept_name: dept_name,
category: category,
sub_cat: sub_cat,
made_up_desc:  made_up_desc,
style: style,
color: color,
sizee: sizee,
mrp: mrp,
item_code: item_code,
ean_code:  ean_code,
base_stock:  base_stock,
soh: soh,
arp_max: arp_max,
available_qty: available_qty,
intransit_qty: intransit_qty,
tsf_expected_qty:  tsf_expected_qty,
distro_qty:  distro_qty,
alloc_non_grn: alloc_non_grn,
open_po: open_po,
cy_saleqty:  cy_saleqty,
py_saleqty:  py_saleqty,
cy_salevalue:  cy_salevalue,
py_salevalue:  py_salevalue,
cy_mrp_salevalue:  cy_mrp_salevalue,
py_mrp_salevalue:  py_mrp_salevalue,
last_180days_saleqty:  last_180days_saleqty)
      end
    end
  end


end

=begin
  desc "Seed the db with Group values"
  task seed_db_groups: :environment do
    #Group.delete_all
        #ActiveRecord::Base.connection.reset_pk_sequence!('groups')
    CSV.foreach(File.open("brands.csv", "r")).each do |row|
      brand_name = row[6]
      group_name = row[7]
      brand_id = Brand.where(name: brand_name).first.id
      if !brand_id.nil? && Group.where(brand_id: brand_id, name: group_name).count == 0
        Group.create(name: group_name, brand_id: brand_id)
        puts "Yippee! #{group_name} added for Brand id #{brand_id}"

      end
    end
  end

  desc "Seed the db with Category values"
  task seed_db_categories: :environment do
    #Group.delete_all #i THINK THIS WILL WORK OKAY... :) wait WAITING..
    #ActiveRecord::Base.connection.reset_pk_sequence!('groups')
    CSV.foreach(File.open("brands.csv", "r")).each do |row|
      brand_name = row[6]
      group_name = row[7]
      category_name = row[9]
      brand_id = Brand.where(name: brand_name).first.id
      group_id = Group.where(name: group_name, brand_id: brand_id).first.id

      #if !brand_id.nil? &&
      if !group_id.nil? && Category.where( group_id: group_id, name: category_name).count == 0
        Category.create(name: category_name, group_id: group_id)
        puts "Yippee! #{group_name} added for group id #{group_id}"

      end
    end
  end

desc "Seed the db with Season values"
  task seed_db_seasons: :environment do
    #Seasons.delete_all #i THINK THIS WILL WORK OKAY... :) wait WAITING..
    #ActiveRecord::Base.connection.reset_pk_sequence!('seasons')
    CSV.foreach(File.open("brandss.csv", "r")).each do |row|
      brand_name= row[0]
      group_name= row[1]
      category_name = row[2]
      qty = row[3]
      nota = row[4]
      dmrp = row[5]
      mrp = row[6]
      cp = row[7]
      not_mix = row[8]
      lfl = row[9]
      overall = row [10]
      lfl_not = row[11]
      season_type = row[41]
      year = row[42]



      if Brand.where(name: brand_name).count == 0
        brand_id = Brand.create(name: brand_name).id
      else
        brand_id = Brand.where(name: brand_name).first.id
      end

      if  Group.where(name: group_name, brand_id: brand_id).count ==0
        group_id = Group.create(name: group_name, brand_id: brand_id).id
      else
        group_id = Group.where(name: group_name, brand_id: brand_id).first.id
      end

      if Category.where(name: category_name, group_id: group_id).count == 0
        category_id = Category.create(name: category_name, group_id: group_id).id
      else
        category_id = Category.where(name: category_name, group_id: group_id).first.id
      end

      #if !brand_id.nil? &&
      if !category_id.nil? && Season.where(category_id: category_id).count == 0
      Season.create(category_id: category_id, season_type: season_type, year: year, quantity: qty, net_of_sales: nota, dmrp: dmrp, mrp: mrp, cost_price: cp, not_mix: not_mix, lfl: lfl, overall: overall, lfl_not: lfl_not)

        puts "Yippee! #{category_name} added for category id #{category_id}"

      end
    end
  end

desc "Seed the db with New Season values"
  task seed_db_new_seasons: :environment do
    #Seasons.delete_all #i THINK THIS WILL WORK OKAY... :) wait WAITING..
    #ActiveRecord::Base.connection.reset_pk_sequence!('seasons')
    CSV.foreach(File.open("brandss.csv", "r")).each do |row|
      brand_name= row[0]
      group_name= row[1]
      category_name = row[2]
      lfl_budget = row[12]
      #lfl
      #overall
      brand_group_budget = row[15]
      class_mix = row[16]
      final_class_mix = row[17]
      #quantity
      nota = row[19]
      #dmrp
      #mrp
      #cost_price

      #md = row[23]
      #im
      season_type = row[41]
      year = row[42]
     # not kahan hain? shit:P  nota haiiii Hahaha, now you could write another seeder, so that you don't have to seed the values again. Or you could modify this, drop the entir database and seed it again, Whatever you feel is the best. I'll seed again. delete the table data. And I'll call you in a while. Cool. Use rake db:drop to drop the databse. Yes... I did it pehle. Wohoo! :D ok brb ugh Cool.



      if Brand.where(name: brand_name).count == 0
        brand_id = Brand.create(name: brand_name).id
      else
        brand_id = Brand.where(name: brand_name).first.id
      end

      if  Group.where(name: group_name, brand_id: brand_id).count ==0
        group_id = Group.create(name: group_name, brand_id: brand_id).id
      else
        group_id = Group.where(name: group_name, brand_id: brand_id).first.id
      end

      if Category.where(name: category_name, group_id: group_id).count == 0
        category_id = Category.create(name: category_name, group_id: group_id).id
      else
        category_id = Category.where(name: category_name, group_id: group_id).first.id
      end

      #if !brand_id.nil? &&
      if !category_id.nil? && NewSeason.where(category_id: category_id).count == 0
      NewSeason.create(category_id: category_id, season_type: season_type, year: year, lfl_budget: lfl_budget, brand_group_budget: brand_group_budget, class_mix: class_mix, final_class_mix: final_class_mix, not: nota)



        puts "Yippee! #{category_name} added for category id #{category_id}"

      end
    end
  end

desc "Seed the db with Final plan values"
  task seed_db_final_plans: :environment do
    #Seasons.delete_all #i THINK THIS WILL WORK OKAY... :) wait WAITING..
    #ActiveRecord::Base.connection.reset_pk_sequence!('seasons')
    CSV.foreach(File.open("brandss.csv", "r")).each do |row|
      brand_name= row[0]
      group_name= row[1]
      category_name = row[2]
      sell_through_asumptions = row[25]
      #otb_value = row[25]
      #otb_qty
      dc_option = row[28]
      dc_qty = row[29]
      number_of_stores = row[30]
      size_set = row[31]
      #initial_alocation = row[25]
      replenishment_mix = row[33]
      #dept_option = row[25]
      #number_of_options = row[35] #formula based
      #number_of_options_avg = row[25]
      #number_of_options_min = row[25]
      #number_of_options_max = row[25]
      #range_of_option = row[25]
      amrp_growth = row[40]
      season_type = row[41]
      year = row[42]



      if Brand.where(name: brand_name).count == 0
        brand_id = Brand.create(name: brand_name).id
      else
        brand_id = Brand.where(name: brand_name).first.id
      end

      if  Group.where(name: group_name, brand_id: brand_id).count ==0
        group_id = Group.create(name: group_name, brand_id: brand_id).id
      else
        group_id = Group.where(name: group_name, brand_id: brand_id).first.id
      end

      if Category.where(name: category_name, group_id: group_id).count == 0
        category_id = Category.create(name: category_name, group_id: group_id).id
      else
        category_id = Category.where(name: category_name, group_id: group_id).first.id
      end

      #if !brand_id.nil? &&
      if !category_id.nil? && FinalPlan.where(category_id: category_id).count == 0
      FinalPlan.create(category_id: category_id, season: season_type, year: year, sell_through_asumptions:sell_through_asumptions,  dc_option: dc_option, dc_qty: dc_qty, number_of_stores: number_of_stores, size_set: size_set, replenishment_mix: replenishment_mix, amrp_growth: amrp_growth )


        puts "Yippee! #{category_name} added for category id #{category_id}"

      end
    end
  end

end
=end
