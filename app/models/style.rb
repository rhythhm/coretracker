class Style < ActiveRecord::Base
    belongs_to :store
    belongs_to :brand
	belongs_to :category
	belongs_to :group
	def season_type_enum
		["AW", "SS"]
	end
end
