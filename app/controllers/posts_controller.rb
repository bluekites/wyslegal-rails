class PostsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  before_action :set_up_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @posts = Post.descending
  end
  
  def show
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "Success!"
    else
      flash.now[:notice] = "Could not create post."
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Success!"
    else
      flash.now[:notice] = "Could not update post."
      render :edit
    end
  end
  
  def destroy
    @post.destroy
    redirect_to posts_path
  end
  
  private
    def set_up_post
      @post = Post.friendly.find(params[:id])
    end
    
    def post_params
      params.require(:post).permit(:title, :content)
    end
    
    def record_not_found
      render :file => 'public/404.html', status: 404
    end
end