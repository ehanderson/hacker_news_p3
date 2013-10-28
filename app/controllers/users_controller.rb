class UsersController < ApplicationController
  def new
  end

  def create

    # render text: params[:user].inspect
    @user = User.new(params[:user])
    if @user
      @user.save
      format.html { redirect_to @welcome, notice: 'Post was successfully created.' }
    else
      format.html { render action: "new" }
    end

  end

end
