class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create 
    @post = Post.new(params.require(:post).permit(:title, :start, :finish, :all_day, :memo))
    # binding.pry
    @post.save
    redirect_to("/posts/index")
  end

  def show
    @post = Post.find(params[:id])
  end


end
