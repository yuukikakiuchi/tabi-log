class Post < ApplicationRecord
  validates :content,presence: true
  mount_uploader :image, ImageUploader

  has_many :post_category_relations
  has_many :categories, through: :post_category_relations
  # accepts_nested_attributes_for :post_category_relations
  # has_many :post_prefecture_relations
  # has_many :prefectures, through: :post_prefecture_relations
  # validates :check_1, presence: true, uniqueness: true
end
