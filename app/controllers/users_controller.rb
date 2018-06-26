# frozen_string_literal: true

# Classe controlodora das acoes de usuario
class UsersController < ApplicationController
  # Renderiza o form de busca por usuario
  def index
  end

  # Renderiza o form de criacao de usuario
  def new
    @user = User.new
  end

  # Adiciona usuario ao banco de dados
  def create
    @user = User.new(user_params)
    @user.save
    login_user(@user)
    redirect_to users_home_path
  end

  # Exibe detalhes do usuario de acordo com o parametro :id
  def show
    @user = User.find(params[:id])
  end

  # Busca usuario de acordo com o parametro :nickname
  def search
    user = User.find_by nickname: params[:nickname]
    if user
      redirect_to user_path(user)
    else
      render :index, error: "usuario não encontrado"
    end
  end

  # Renderiza a home do usuario
  def home
  end

  private

  # Filtro que impede uma requisicao com parametros indesejados para usuario
  def user_params
    params.require(:user).permit(:name, :password, :nickname, :phone)
  end
end
