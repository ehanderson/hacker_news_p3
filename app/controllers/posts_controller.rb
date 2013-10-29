class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    @post = Post.new(title: params[:post][:title], link: params[:post][:link], user_id: session[:user_id] )

    if @post.save
      # session[:post_id] = @post.id
      redirect_to root_path
    else
      @fail_message = "This isn't working"
      render "index"
    end  
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    redirect_to root_path
  end
end
