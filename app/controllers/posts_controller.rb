class PostsController < ApplicationController
  def index
    @posts = Post.all
    render :index
  end

  def show
    @posts = Post.find_by(params[:id])
  end

  def new
  end
  
  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
  redirect_to posts_path
  end

  def new
  end

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end
  
end
