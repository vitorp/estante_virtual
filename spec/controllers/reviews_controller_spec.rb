# frozen_string_literal: true

require "rails_helper"

RSpec.describe ReviewsController, type: :controller do
  let!(:user) { User.create(name: "User", nickname: "user_nick", password: "senha", phone: "123456789") }
  let!(:book) {
    Book.create(author:           "Renan",
                title:            "Titulo",
                publication_date: Date.new(2015, 11, 23),
                code:             "codigo",
                genre:            "genero",
                user_id:          user.id)
  }
  let(:review_params) {
    {review:
              {title: "Titulo",
               body:  "body review"},
     book_id: book.id}
  }
  before(:each) do
    controller.login_user(user)
  end

  describe "GET #new" do
    subject { get :new, params: {book_id: book.id} }

    it { is_expected.to have_http_status(:success) }
  end

  describe "POST #create" do
    subject { post :create, params: review_params }

    it { is_expected.to have_http_status(:redirect) }
    it { is_expected.to redirect_to(book_path(assigns(:review).book)) }

    it "creates a record" do
      expect { subject }.to change(Review, :count).by(1)
    end
  end
end
