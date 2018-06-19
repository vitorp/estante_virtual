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

  let(:book) {
    Book.create(author:           "Renan",
                title:            "Titulo",
                publication_date: Date.new(2015, 11, 23),
                code:             "codigo",
                genre:            "genero",
                user_id:          user.id)
  }

  let(:user) { User.create(name: "User", nickname: "user_nick", password: "senha", phone: "123456789") }

  describe "GET #new" do
    subject { get :new }

    it { is_expected.to have_http_status(:success) }
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

  describe "GET #shelf" do
    subject { get :shelf }

    before(:each) do
      controller.login_user(user)
    end

    it { is_expected.to have_http_status(:success) }
  end

  describe "GET #setup_trade" do
    subject { get :setup_trade, params: {id: book.id} }

    it "turns book tradable" do
      subject
      expect(book.reload).to be_tradable
    end
  end

  describe "GET #remove_trade" do
    subject { get :remove_trade, params: {id: book.id} }

    it "turns book untradable" do
      subject
      expect(book.reload).to_not be_tradable
    end
  end
end
