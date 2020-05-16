class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path  #コントローラの処理終了後、トップページに飛ぶように処理している。
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
