class Prefecture < ApplicationRecord
  has_many :post_prefecture_relations
  has_many :posts, through: :post_prefecture_relations
end
