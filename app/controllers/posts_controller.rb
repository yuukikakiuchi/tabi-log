class PostsController < ApplicationController
  
  def index
    @posts = Post.all
    @regions = Region.all
    @prefectures = Prefecture.all
    @headers = 'messages/header'
  
  end

  def new
    @post = Post.new
  end


  def create
    Post.create(post_params)
    # Category.create(category_params)
    # Post_category_relation.create(post_category_params)
    # category様にpermit指定したこのテーブルのカラムだけでよし多対多の関連付けのおかげかも
  end

  

  # def search
  #   #Viewのformで取得したパラメータをモデルに渡す
  #   #インスタンス変数@postsは ビューから送られたパラメーター検索語を受け取り
  #   @posts = Message.search(params[:search])
  #   # messgaeモデルのサーチメソッドの呼び出し[ビューのフォームでの引数をいれる]
  # end  
 

  private
  def post_params
    params.permit(:areaname, :content, :genre, :large_area, :medium_area, :check_1, :check_2, :check_3, :check_4, :check_5, :check_6, :check_7, :check_8, :check_9, :image, :level)
  end
  
  def category_params
    params.permit(:check_1, :check_id, :post_id, :category_id)
  end

  # def post_category_params
  #   params.permit(:category_id, :post_id)
  # end

end



# class PostsController < ApplicationController
  
#   def index
#     @posts = Post.all
#   end

#   def new
#     @post = Post.new
#   end


#   def create
#     def create
#       Post.create(post_params)

#     end
    
#   end

 
#   private
#   def post_params
#     params.permit(:areaname, :content, :large_area, :check_1, :image)
