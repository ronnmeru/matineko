class Post < ApplicationRecord
 has_many :likes, dependent: :destroy
 has_many :comments, dependent: :destroy
 has_many :taggings, dependent: :destroy
 belongs_to :users
  attachment :image # ここを追加（_idは含めません）
end
