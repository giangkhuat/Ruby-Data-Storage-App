class UsersController < ApplicationController
  
  def index
    user_list = User.all
    @users_list = user_list
  end
  
  def new
  end
  
  def show
    @user = User.find(params[:id])
  end
end
