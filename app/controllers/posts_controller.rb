class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end


  def create
    def create
      Post.create(post_params)

    end
    
  end

 
  private
  def post_params
    params.permit(:areaname, :content, :large_area, :check_1, :image)
  end
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
