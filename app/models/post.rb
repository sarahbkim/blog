class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :images, dependent: :create :destroy
	validates :title, presence: true, 
					  length: { minimum: 5 }
end