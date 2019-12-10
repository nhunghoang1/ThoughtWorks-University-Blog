class Post < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
					  uniqueness: { message: '%{value} is already used' }
end
