# frozen_string_literal: true

require "rails_helper"

RSpec.describe UsersController, type: :controller do
  let(:valid_attributes) {
    {user:
           {name: "Uriel Silva", nickname: "Billy", password: "senha", phone: "999994317"}}
  }
  let(:user) { User.create(name: "User", nickname: "nick", password: "senha", phone: "123456789") }

  before(:each) do
    controller.login_user(user)
  end

  describe "POST #create" do
    subject { post :create, params: valid_attributes }

    it "creates a user" do
      expect { subject }.to change(User, :count).by 1
    end

    it { is_expected.to redirect_to(users_home_path) }

    it "stores current_user in session" do
      subject
      expect(session[:current_user_id]).to eq(assigns(:user).id)
    end
  end

  describe "GET #show" do
    subject { get :show, params: {id: user.id} }

    it { is_expected.to have_http_status(200) }

    it "assigns the correct user" do
      subject
      expect(assigns(:user)).to eql(user)
    end
  end

  describe "GET #index" do
    subject { get :index }

    it { is_expected.to have_http_status(200) }
  end

  describe "GET #search" do
    subject { get :search, params: {nickname: user.nickname} }

    it { is_expected.to have_http_status(:redirect) }
    it { is_expected.to redirect_to(user_path(user)) }
  end
end
