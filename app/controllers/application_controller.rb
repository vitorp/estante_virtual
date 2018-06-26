# frozen_string_literal: true

# Classe controladora base do sistema da qual todas as controladoras herdam
class ApplicationController < ActionController::Base
  helper_method :current_user, :login_user
  before_action :verify_logged_in
  add_flash_types :success, :error, :notify

  # Armazena id do usuario na sessao
  def login_user(user)
    session[:current_user_id] = user.id
  end

  # Retorna usuario armazenado ou busca usuario pelo id armazenado na sessao
  # e retorna nil caso nenhum usuario esteja logado
  def current_user
    @current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
  end

  # Remove usuario da sessao
  def logout_user
    @current_user = nil
    session[:current_user_id] = nil
  end

  # Hook executado antes de toda acao garantindo que o usuario esta logado
  def verify_logged_in
    redirect_to login_form_path, error: "Usuário deve estar logado para realizar essa ação." if current_user.blank?
  end
end
