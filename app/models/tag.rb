class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :articles, through: :taggings


	def to_s
		name		
	end

	def tag_list
		tags.join(", ")
	end
end
