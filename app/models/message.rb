class Message < ApplicationRecord
  # def self.
  def self.search(search)
    # サーチメソッドを作っている
    if search
      Post.where(['(content LIKE ?)  OR  (areaname LIKE ?) OR (medium_area LIKE ?)', "%#{search}%", "%#{search}%", "%#{search}%"])
      # Post.where(['content LIKE ?', "%#{search}%"])
      # Postモデルのcontentカラムで検索
    else
      Post.all
    end
  end

  def self.fsearch
    # サーチメソッドを作っている
    
      # Post.where(['content LIKE ?', or 'areaname LIKE ?', "%#{search}%","%#{search}%"])
    Post.where(check_1: "初心者にオススメ")
      # Postモデルのcontentカラムで検索
  
    
  end
end
