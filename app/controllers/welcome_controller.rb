# frozen_string_literal: true

# Classe controladora responsável pelas ações de controle de acesso e ações de usuários
# não logados no sistema
class WelcomeController < ApplicationController
  skip_before_action :verify_logged_in, only: %i[home login]

  # Home do sistema primeira página que o usuário entra em contato
  def home
  end

  # Ação que define o usuário atual de acordo com os parametros post
  def login
    user = User.find_by(login_params)

    if user.present?
      login_user(user)
      redirect_to users_home_path
    else
      redirect_to login_form_path, error: "Login inválido"
    end
  end

  # Termina sessão do usuário logado
  def logout
    logout_user
    redirect_to login_form_path, success: "Você saiu com sucesso"
  end

  # Filtro que impede uma requisição com parametros que não desejamos para login
  def login_params
    params.require(:login).permit(:nickname, :password)
  end
end
