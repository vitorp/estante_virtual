# frozen_string_literal: true

require "rails_helper"

RSpec.describe UserController, type: :controller do
  let(:valid_attributes) {
    {user:
           {name: "Uriel Silva", nickname: "Billy", password: "senha", phone: "999994317"}}
  }

  describe "POST #create" do
    subject { post :create, params: valid_attributes }
    it "creates a user" do
      expect { subject }.to change(User, :count).by 1
    end

    it "redirects to user home" do
      expect(subject).to redirect_to(user_home_path)
    end

    it "stores current_user in session" do
      subject
      expect(session[:current_user_id]).to eq(assigns(:user).id)
    end
  end
end
