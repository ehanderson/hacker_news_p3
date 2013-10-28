class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(title: params[:post][:title], link: params[:post][:link], user_id: session[:user_id] )
    p params
    if @post.save!
      # session[:post_id] = @post.id
      redirect_to root_path
    else 
      @fail_message = "This isn't working"
      render "index"
    end  
  end
end
