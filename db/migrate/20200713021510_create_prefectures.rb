class CreatePrefectures < ActiveRecord::Migration[6.0]
  def change
    create_table :prefectures do |t|

      t.text :name
      t.string :region_id
    end
  end
end
