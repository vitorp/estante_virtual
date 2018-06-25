# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user, :login_user
  before_action :verify_logged_in
  add_flash_types :success, :error, :notify

  def login_user(user)
    session[:current_user_id] = user.id
  end

  def current_user
    @current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
  end

  def logout_user
    @current_user = nil
    session[:current_user_id] = nil
  end

  def verify_logged_in
    redirect_to login_form_path, error: "Usuário deve estar logado para realizar essa ação." if current_user.blank?
  end
end
