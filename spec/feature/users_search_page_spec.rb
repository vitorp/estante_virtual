# frozen_string_literal: true

require "rails_helper"

RSpec.describe "User search feature", type: :feature do
  before :all do
    user = User.create(name: "User", nickname: "nick2", password: "senha", phone: "123456789")
    visit login_form_path
    fill_in "login_nickname", with: user.nickname
    fill_in "login_password", with: user.password

    click_button "Entrar"
  end

  it "Finds a user" do
    visit users_path
    fill_in "nickname", with: "nick2"
    click_button "Buscar"

    expect(page).to have_content "Apelido: nick2"
  end
end
