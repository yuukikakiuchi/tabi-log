class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.string :image
      t.string :areaname
      t.string :large_area
      t.string :medium_area
      t.string :check_1
      t.string :check_2
      t.string :check_3
    
    end
  end
end
