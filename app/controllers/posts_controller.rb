class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create 
    @post = Post.new(params.require(:post).permit(:title, :start, :finish, :all_day, :memo))
    if @post.save
      redirect_to("/posts/index")
      flash[:notice] = "スケジュールを登録しました"
    else
      render("posts/new")
      flash[:alert] = "スケジュールを登録できませんでした"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params.require(:post).permit(:title, :start, :finish, :all_day, :memo))
    if @post.save
      redirect_to("/posts/index")
      flash[:notice] = "スケジュールを更新しました"
    else
      render("posts/edit")
      flash[:alert] = "スケジュールを更新できませんでした"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:alert] = "スケジュールを削除しました"
    redirect_to("/posts/index")
  end


end
