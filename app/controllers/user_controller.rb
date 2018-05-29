# frozen_string_literal: true

class UserController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.save
    login_user(@user)
    redirect_to user_home_path
  end

  def user_params
    params.require(:user).permit(:name, :password, :nickname, :phone)
  end
end
