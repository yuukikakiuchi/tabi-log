class MessagesController < ApplicationController
  # before_action :set_post

  def index
    
    @posts = Post.all
    # postsコントローラーの変数、これが無いとpostで送った内容が表示できない
    @messages = 'message'
    @fmessages = 'feature_message'
    # massageビューでこの変数を使う、messageURLが入っている
    @headers = 'header'
    @posts = Message.search(params[:search])
    @fposts = Message.fsearch
    # @postsf = Post.all(params[:areanames])

  end

  # def search
  #   #Viewのformで取得したパラメータをモデルに渡す
  #   #インスタンス変数@postsは ビューから送られたパラメーター検索語を受け取り
  #   @posts = Message.search(params[:search]),(search_params)
  #   # messgaeモデルのサーチメソッドの呼び出し[ビューのフォームでの引数をいれる]
  # end  

  # private
  # def set_post
  #   @group = Group.find(params[:group_id])
  # end
  # messagesコントローラーの全てのアクションで@groupを利用できるようにしている

  private
  def search_params
    params.permit(:content, :search, :areaname)
  end
end
# class MessagesController < ApplicationController
#   def index
#     @posts = Post.all
#   end
