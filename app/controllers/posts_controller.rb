class PostsController < ApplicationController
  
  before_action :set_up_post, only: [:show, :edit, :update, :destroy]
  
  def index
    @posts = Post.all
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
      render :new, notice: "Failed to create post."
    end
  end
  
  def edit
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
  private
    def set_up_post
      @post = Post.friendly.find(params[:id])
    end
    
    def post_params
      params.require(:post).permit(:title, :content)
    end
end