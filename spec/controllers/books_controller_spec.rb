# frozen_string_literal: true

require "rails_helper"

RSpec.describe BooksController, type: :controller do
  let(:book_params) {
    {book:
           {author:           "Renan",
            title:            "Titulo",
            publication_date: Date.new(2015, 11, 23),
            code:             "codigo",
            genre:            "genero"}}
  }
  let(:user) { User.create(name: "User", nickname: "user_nick", password: "senha", phone: "123456789") }
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    subject { post :create, params: book_params }

    it "creates a new book" do
      controller.login_user(user)
      expect { subject }.to change(Book, :count).by(1)
    end

    it "redirects to books show" do
      controller.login_user(user)
      expect(subject).to redirect_to(book_path(assigns(:book)))
    end
  end
end
