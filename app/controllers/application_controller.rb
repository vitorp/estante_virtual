# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user, :login_user

  def login_user(user)
    session[:current_user_id] = user.id
  end

  def current_user
    @current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
  end
end
