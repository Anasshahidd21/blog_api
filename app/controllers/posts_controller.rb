class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end
  
  def show
    render json: Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.save!
  end


  private

  def post_params
    params.require(:post).permit(:title, :name, :description, :author)
  end

end
