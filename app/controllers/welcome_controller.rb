# frozen_string_literal: true

# Classe controladora responsavel pelas acoes de controle de acesso e acoes de usuarios
# nao logados no sistema
class WelcomeController < ApplicationController
  skip_before_action :verify_logged_in, only: %i[home login]

  # Home do sistema primeira pagina que o usuario entra em contato
  def home
  end

  # Acao que define o usuario atual de acordo com os parametros post
  def login
    user = User.find_by(login_params)

    if user.present?
      login_user(user)
      redirect_to users_home_path
    else
      redirect_to login_form_path, error: "Login inválido"
    end
  end

  # Termina sessao do usuario logado
  def logout
    logout_user
    redirect_to login_form_path, success: "Você saiu com sucesso"
  end

  # Filtro que impede uma requisicao com parametros que nao desejamos para login
  def login_params
    params.require(:login).permit(:nickname, :password)
  end
end
