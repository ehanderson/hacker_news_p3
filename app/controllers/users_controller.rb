class UsersController < ApplicationController
  def new
  end

  def create
    # render text: params[:user].inspect
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else 
      render "new"
    end   
  end

  def login
    user = User.find_by_username(params[:user][:username])
    puts params
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      @login_error = "Invalid login"
      render "new"
    end
  end

  def logout
    session.clear
    redirect_to root_path
  end

end
