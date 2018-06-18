# frozen_string_literal: true

require "rails_helper"

RSpec.describe Book, type: :model do
  let(:book) {
     {
       title:            "title",
       author:           "Me",
       publication_date: Date.current,
       code:             "Code",
       genre:            "Genero",
       tradable:         false
     }}
  let(:user) { User.create(name: "User", nickname: "user_nick", password: "senha", phone: "123456789") }

  it { should belong_to :user }
  it { should have_many :reviews }

  it { should validate_uniqueness_of :title }

  it { should validate_presence_of :title }
  it { should validate_presence_of :author }
  it { should validate_presence_of :publication_date }
  it { should validate_presence_of :code }
  it { should validate_presence_of :genre }

  it "cannot be more than 10 books for a user" do
    book[:user_id] = user.id
    10.times do |i|
      save_book = Book.new(book)
      save_book.title = "title #{i}"
      save_book.save
    end
    save_book = Book.new(book)
    save_book.title = "title 11"

    expect(save_book.save).to be false
  end
end
