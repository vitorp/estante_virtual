# frozen_string_literal: true

require "rails_helper"

RSpec.describe WelcomeController, type: :controller do
  let(:login_data) { {login: {nickname: "Tuts", password: "senha"}} }

  describe "POST #login" do
    subject { post :login, params: login_data }
    context "when login is valid" do
      let!(:user) {
        User.create(name:     "Mateus",
                    nickname: login_data[:login][:nickname],
                    password: login_data[:login][:password],
                    phone:    "999999999")
      }

      it "defines current user" do
        subject
        expect(controller.current_user).to eq(user)
      end

      it "redirects to user home" do
        expect(subject).to redirect_to(user_home_path)
      end
    end

    context "when login is invalid" do
      it "doesn't define current user" do
        subject
        expect(controller.current_user).to be_nil
      end

      it "renders to login page" do
        expect(subject).to render_template("welcome/home")
      end

      it "sets an error message" do
        subject
        expect(flash[:error]).to include("Login inválido")
      end
    end
  end
end
