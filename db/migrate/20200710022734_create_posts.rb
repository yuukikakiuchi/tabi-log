class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.string :image, null:false
      t.string :areaname, null:false, default: ""
      t.string :genre, null:false, default: ""
      t.string :large_area, null:false, default: ""
      t.string :medium_area, null:false, default: ""
      t.text :level
      t.string :check_1, null:false, default: ""
      t.string :check_2, null:false, default: ""
      t.string :check_3, null:false, default: ""
      t.string :check_4, null:false, default: ""
      t.string :check_5, null:false, default: ""
      t.string :check_6, null:false, default: ""
      t.string :check_7, null:false, default: ""
      t.string :check_8, null:false, default: ""
      t.string :check_9, null:false, default: ""
      t.references :category, foreign_key: true, null: false
    
    end
  end
end
