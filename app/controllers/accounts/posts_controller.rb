class Accounts::PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :delete]

  def index
    @posts = Post.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @post = Post.new()
  end

  def create
    @post = Post.new(post_params)
    return false unless curent_user
    @post.user = current_user

    if @post.save
      flash[:alert] = "Your post has been successfully saved"
      redirect_to account_posts_path
    else
      flash[:alert] = "Something went wrong, we'll do our best to fix the problem"
      redirect_to account_posts_path
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def find_post
    @post = Post.find_by(id: params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description, :tag_list, :user_id)
  end
end
