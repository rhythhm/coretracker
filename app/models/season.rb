class Season < ActiveRecord::Base
	belongs_to :category
	belongs_to :group
	belongs_to :brand

	def season_type_enum
		["AW", "SS"]
	end
		

end