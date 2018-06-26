# frozen_string_literal: true

require "rails_helper"

RSpec.describe BooksController, type: :controller do
  let(:book_params) {
    {book:
           {author:           "Renan",
            title:            "Titulo",
            publication_date: Date.new(2015, 11, 23),
            code:             "12345",
            genre:            "CONTO"}}
  }

  let(:book) {
    Book.create(author:           "Renan",
                title:            "Titulo",
                publication_date: Date.new(2015, 11, 23),
                code:             "21345",
                genre:            "CONTO",
                user_id:          user.id)
  }

  let!(:user) { User.create(name: "User", nickname: "nick", password: "senha", phone: "123456789") }
  before(:each) do
    controller.login_user(user)
  end

  describe "GET #new" do
    subject { get :new }

    it { is_expected.to have_http_status(:success) }
  end

  describe "POST #create" do
    subject { post :create, params: book_params }

    before(:each) do
      controller.login_user(user)
    end

    it "creates a new book" do
      expect { subject }.to change(Book, :count).by(1)
    end

    it { is_expected.to redirect_to(book_path(assigns(:book))) }
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

  describe "DELETE #destroy" do
    let(:not_owner) { User.create(name: "User", nickname: "user_nick", password: "senha", phone: "123456789") }
    subject { delete :destroy, params: {id: book.id} }

    it { is_expected.to have_http_status(:redirect) }

    context "when logged as the owner" do
      before(:each) do
        controller.login_user(user)
        book
      end

      it "deletes the book" do
        expect { subject }.to change(Book, :count).by(-1)
      end
    end

    context "when not logged as the owner" do
      before(:each) do
        controller.login_user(not_owner)
        book
      end

      it "does not delete the book" do
        expect { subject }.to change(Book, :count).by(0)
      end
    end
  end

  describe "GET #search" do
    subject { get :search, params: {id: book.id} }

    it { is_expected.to have_http_status(:success) }
  end

  describe "GET #list_search" do
    subject { get :list_search, params: {title: book.title} }

    it { is_expected.to have_http_status(:success) }

    context "when the book is tradable" do
      before(:each) do
        book.update(tradable: true)
      end

      it "finds the book" do
        subject
        expect(assigns(:books)).to eq([book])
      end
    end

    context "when the book is untradable" do
      before(:each) do
        book.update(tradable: false)
      end

      it "finds the book" do
        subject
        expect(assigns(:books)).to eq([])
      end
    end
  end
end
