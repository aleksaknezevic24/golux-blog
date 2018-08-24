class Blog < ApplicationRecord
	belongs_to :user
	belongs_to :category 
	has_many :comments, dependent: :destroy 
	has_many :favourites, dependent: :destroy  
	has_attached_file :image, styles: {large: "500x500>", medium: "300x300>", thumb: "100x100#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
