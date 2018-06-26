# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Book search feature", type: :feature do
  before :all do
    @user = User.create(name: "User", nickname: "nick2", password: "senha", phone: "123456789")
    visit login_form_path
    fill_in "login_nickname", with: @user.nickname
    fill_in "login_password", with: @user.password

    click_button "Entrar"
  end
  let!(:book1) {
    Book.create(author:           "Renan",
                title:            "Titulo1",
                publication_date: Date.new(2015, 11, 23),
                code:             "123",
                genre:            "CONTO",
                tradable:         true,
                user_id:          User.first.id)
  }
  let!(:book2) {
    Book.create(author:           "Renan",
                title:            "Titulo2",
                publication_date: Date.new(2015, 11, 23),
                code:             "1234",
                genre:            "CONTO",
                tradable:         true,
                user_id:          User.first.id)
  }

  it "List books" do
    visit books_search_path
    within(".form-group") do
      fill_in "title", with: "Titulo"
    end
    click_button "Buscar"

    expect(page).to have_content book1.title
    expect(page).to have_content book2.title
  end
end
