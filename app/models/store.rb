class Store < ActiveRecord::Base
	belongs_to :category
	belongs_to :group
	belongs_to :brand
	belongs_to :season
	def season_type_enum
		["AW", "SS"]
	end


end
