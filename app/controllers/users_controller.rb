class UsersController < ApplicationController
  
  def index
    user_list = User.all
    @users_list = user_list
  end
  
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params) # Not the final implementation!
    if @user.save
      redirect_to user_url(@user)
    else
      render 'new'
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation)
    end


end
