class Post < ActiveRecord::Base
	belongs_to :category
	
	validates :title, presence: true, length: { minimum: 5 }
	validates :text, presence: true
	accepts_nested_attributes_for :category
end

