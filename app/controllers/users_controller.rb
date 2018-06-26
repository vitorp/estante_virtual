# frozen_string_literal: true

# Classe controlodora das ações de usuário
class UsersController < ApplicationController
  # Renderiza o form de busca por usuário
  def index
  end

  # Renderiza o form de criação de usuário
  def new
    @user = User.new
  end

  # Adiciona usuário ao banco de dados
  def create
    @user = User.new(user_params)
    @user.save
    login_user(@user)
    redirect_to users_home_path
  end

  # Exibe detalhes do usuário de acordo com o parametro :id
  def show
    @user = User.find(params[:id])
  end

  # Busca usuário de acordo com o parametro :nickname
  def search
    user = User.find_by nickname: params[:nickname]
    if user
      redirect_to user_path(user)
    else
      render :index, error: "Usuário não encontrado"
    end
  end

  # Renderiza a home do usuário
  def home
  end

  private

  # Filtro que impede uma requisição com parametros indesejados para usuário
  def user_params
    params.require(:user).permit(:name, :password, :nickname, :phone)
  end
end
