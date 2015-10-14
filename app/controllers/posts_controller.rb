class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    # TODO: need for a category scope, only tutorials got the show action
    # trick cards will just slide down to show complete content
  end

  def like
    @post = Post.find(params[:id])
    if current_user.voted_for? @post
      current_user.unvote_for @post
    else
      current_user.up_votes @post
    end
    @post
  end
end
