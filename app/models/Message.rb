class Message
include ActiveModel::Model
attr_accessor :name, :email, :body
validates :name, :email, presence :true
end