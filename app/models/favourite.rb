class Favourite < ApplicationRecord
	enum status: { unset: 0, set: 1}
	belongs_to :users, required: false
	belongs_to :blogs, required: false
end
