class CreatePostPrefectureRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :post_prefecture_relations do |t|
        t.string :name
        t.integer :score
        t.references :post, foreign_key: true
        t.references :prefecture, foreign_key: true
        t.timestamps null: false
     
    end
  end
end
