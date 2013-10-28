class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    puts "---------------------------------------------------------"
    puts params
    Comment.create(params[:comment]).update_attributes(post_id: params[:post_id], user_id: current_user.id)

    # redirect_to post_comments_path(@post)
    render "index"
  end
end
