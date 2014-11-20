class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new params
  end

  private
  def users_params
    params.require(:user).permit(:name, :email, :phone)
  end
end
