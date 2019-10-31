class PostsController < ApplicationController
  def new
  end

  def index
    @posts = Post.all
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :image, :slug, :date)
  end
end
