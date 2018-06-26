# frozen_string_literal: true

# Classe controladora base do sistema da qual todas as controladoras herdam
class ApplicationController < ActionController::Base
  helper_method :current_user, :login_user
  before_action :verify_logged_in
  add_flash_types :success, :error, :notify

  # Armazena id do usuário na sessão
  def login_user(user)
    session[:current_user_id] = user.id
  end

  # Retorna usuário armazenado ou busca usuário pelo id armazenado na sessãoptimize
  # Retorna nil caso nenhum usuário esteja logado
  def current_user
    @current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
  end

  # Remove usuário da sessão
  def logout_user
    @current_user = nil
    session[:current_user_id] = nil
  end

  # Hook executado antes de toda ação garantindo que o usuário está logado
  def verify_logged_in
    redirect_to login_form_path, error: "Usuário deve estar logado para realizar essa ação." if current_user.blank?
  end
end
