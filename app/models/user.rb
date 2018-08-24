class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	belongs_to :role
	has_many :blogs, dependent: :destroy
	has_many :comments, dependent: :destroy 
	has_many :favourites, dependent: :destroy  

	has_attached_file :image, styles: {large: "500x500>", medium: "300x300>", thumb: "100x100#"}, default_url: lambda{|image| image.instance.set_default_url}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/     

	def full_name
		"#{first_name} #{last_name}"
	end

	def set_default_url
		ActionController::Base.helpers.asset_path('like.jpg')
	end

end
