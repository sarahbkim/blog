class Category < ActiveRecord::Base
	has_many :posts
	validates :name, presence: true 
	accepts_nested_attributes_for :post

end
