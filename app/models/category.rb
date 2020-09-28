class Category < ApplicationRecord
  has_many :post
  has_ancestry
  # has_many :post_category_relations
  # has_many :posts, through: :post_category_relations
end
