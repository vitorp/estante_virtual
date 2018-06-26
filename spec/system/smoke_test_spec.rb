# frozen_string_literal: true

require "rails_helper"

RSpec.describe "the login process", type: :system do
  before :each do
    User.create(name: "User", nickname: "user_nick", password: "senha", phone: "123456789")
  end

  it "signs me in" do
    visit login_form_path
    fill_in "login_nickname", with: "user_nick"
    fill_in "login_password", with: "senha"

    click_button "Entrar"
    expect(page.current_path).to eq users_home_path
  end
end
