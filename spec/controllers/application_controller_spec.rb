# frozen_string_literal: true

require "rails_helper"

RSpec.describe ApplicationController, type: :controller do
  let(:user) { User.create(name: "Uriel", nickname: "Billy", password: "Senha", phone: "123456789") }

  describe ".login_user" do
    it "adds current user ID to the session" do
      controller.login_user(user)
      expect(session[:current_user_id]).to eq(user.id)
    end
  end

  describe ".current_user" do
    it "returns current_user if logged in" do
      controller.login_user(user)
      expect(controller.current_user).to eq(user)
    end

    it "returns nil if no user is logged in" do
      expect(controller.current_user).to eq(nil)
    end
  end
end
