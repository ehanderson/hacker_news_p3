class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    # puts "---------------------------------------------------------"
    puts params
    Comment.create(params[:comment]).update_attributes(post_id: params[:post_id], user_id: current_user.id)

    redirect_to post_comments_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    Comment.find(params[:id]).destroy
    redirect_to post_comments_path(@post)
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    # puts "---------------------------------------------------------"
    # puts @comment.inspect
  end

  def update
    puts "---------------------------------------------------------"
    puts params
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
    @comment.update_attributes(params[:comment])
    redirect_to post_comments_path
  end
end
