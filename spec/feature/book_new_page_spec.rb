# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Book create", type: :feature do
  before :all do
    user = User.create(name: "User", nickname: "nicks", password: "senha", phone: "123456789")
    visit login_form_path
    fill_in "login_nickname", with: user.nickname
    fill_in "login_password", with: user.password

    click_button "Entrar"
  end

  it "Creates a book" do
    visit new_book_path
    fill_in "book_title", with: "titulo_teste"
    fill_in "book_author", with: "Autor"
    fill_in "book_code", with: "1234"
    fill_in "book_genre", with: "CONTO"
    select "2013", from: "book_publication_date_1i"
    select "January", from: "book_publication_date_2i"
    select "26", from: "book_publication_date_3i"
    click_button "Cadastrar livro"

    expect(page).to have_content "Livro foi cadastrado com sucesso"
  end
end
