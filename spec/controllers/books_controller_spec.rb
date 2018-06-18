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
    xit "creates a new book" do
      expect {
        post :create, params: book_params
      }.to change(Book, :count).by(1)
    end
  end
end
