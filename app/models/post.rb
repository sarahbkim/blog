class Post < ActiveRecord::Base
	has_many :categories
	validates :title, presence: true, length: { minimum: 5 }
	validates :text, presence: true
	validates :meta_title, presence: true, length: { maximum: 60 }
	validates :meta_desc, presence: true, length: { maximum: 200 }
end

#validate category! 