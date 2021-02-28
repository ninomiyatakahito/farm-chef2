class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:update, :create, :edit, :destroy]
  def index
    @posts =Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  
  private

  def post_params
    params.require(:post).permit(:post_text, :image).merge(user_id: current_user.id)
  end
end
