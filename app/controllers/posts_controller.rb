class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = 'Post saved successfully!'
      redirect_to(@post)
    else
      flash.now[:alert] = 'Post was unable to save!'
      render :new
    end
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :image, :slug, :date)
  end
end
