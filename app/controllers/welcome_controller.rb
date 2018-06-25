# frozen_string_literal: true

class WelcomeController < ApplicationController
  def home
  end

  def login
    user = User.find_by(login_params)

    if user.present?
      login_user(user)
      redirect_to users_home_path
    else
      flash[:error] ||= []
      flash[:error] << "Login inválido"
      render :home
    end
  end

  def logout
    logout_user
    redirect_to login_form_path, success: "Você saiu com sucesso"
  end

  def login_params
    params.require(:login).permit(:nickname, :password)
  end
end
