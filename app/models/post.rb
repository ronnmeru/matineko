class Post < ApplicationRecord
 has_many :post_images, dependent: :destroy
 has_many :likes, dependent: :destroy
 has_many :comments, dependent: :destroy
 has_many :taggings, dependent: :destroy
 belongs_to :users

end
