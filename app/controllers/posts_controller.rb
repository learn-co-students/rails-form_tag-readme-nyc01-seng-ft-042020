class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post=Post.new
  end

  def create
    @post=Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end

 #

#   def post_params
#     params.require(:posts).permit(:title,:description)
#  end

end
