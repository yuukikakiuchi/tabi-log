class MessagesController < ApplicationController
  # before_action :set_post

  def index
    @posts = Post.all
    # postsコントローラーの変数、これが無いとpostで送った内容が表示できない
    @messages = 'message'
    # massageビューでこの変数を使う、messageURLが入っている
    @headers = 'header'
  end

  # private
  # def set_post
  #   @group = Group.find(params[:group_id])
  # end
  # messagesコントローラーの全てのアクションで@groupを利用できるようにしている

end
# class MessagesController < ApplicationController
#   def index
#     @posts = Post.all
#   end
