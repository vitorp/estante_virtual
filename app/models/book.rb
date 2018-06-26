# frozen_string_literal: true

# Classe livro responsável pelas validações e relacionamentos dos objetos livro
class Book < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :title, uniqueness: true

  validates :title, presence: true
  validates :author, presence: true
  validates :code, presence: true
  validates :publication_date, presence: true
  validates :genre, presence: true
  validate :book_count, if: ->(obj) { obj.user.present? }

  # Validação da quantidade limite de livros pro usuário
  def book_count
    errors.add(:base, "Limite de 10 livros cadastrados") if user.books.count > 9
  end
end
