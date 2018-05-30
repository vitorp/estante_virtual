# frozen_string_literal: true

require "rails_helper"

RSpec.describe WelcomeController, type: :controller do
  let(:login_data) { {nickname: "Tuts", password: "senha"} }

  describe "POST #login" do
    context "when login is valid" do
      let(:user) {
        User.create({ name: "Mateus", nickname: login_data.nickname , password: login_data.password, phone: "999999999" })
      }

      it "defines current user" do
        post :login, params: login_data
        expect(controller.current_user).to eq(user)
      end
    end
  end
end
