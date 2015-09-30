class Accounts::PostsController < ApplicationController

  def new
  end

  def create
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

  def post_params
    params.require(:post).permit(:title, :description, :tag_list)
  end
end
