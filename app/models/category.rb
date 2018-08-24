class Category < ApplicationRecord
has_many :blogs, dependent: :destroy

	def count_blogs
	 "broj postova: "+"#{self.blogs.count}"
	end

end
