class UserController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	new_user = User.new(user_params)
  	new_user.save
  	redirect_to 'user/index' #users_url
  end

  def index
  	@users = User.all
  end

  private
  def user_params
  	params.require(:user).permit(:name, :email)
  end
end
