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

  it { is_expected.to belong_to :user }
  it { is_expected.to have_many :reviews }

  it { is_expected.to validate_uniqueness_of :title }

  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :author }
  it { is_expected.to validate_presence_of :publication_date }
  it { is_expected.to validate_presence_of :code }
  it { is_expected.to validate_presence_of :genre }

  it { is_expected.to validate_length_of(:code).is_at_most(5) }
  it { is_expected.to validate_numericality_of(:code).only_integer }
  it { is_expected.to validate_inclusion_of(:genre).in_array(%w[EPOPEIA NOVELA CONTO ENSAIO ROMANCE]) }

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
