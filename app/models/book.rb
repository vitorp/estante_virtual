# frozen_string_literal: true

# Classe livro responsavel pelas validacoes e relacionamentos dos objetos livro
class Book < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :title, uniqueness: true

  validates :title, presence: true
  validates :author, presence: true
  validates :code, presence: true, numericality: {only_integer: true}, length: {maximum: 5}
  validates :publication_date, presence: true
  validates :genre, presence: true, inclusion: {in: %w[EPOPEIA CONTO NOVELA ENSAIO ROMANCE]}
  validate :book_count, if: ->(obj) { obj.user.present? }

  # Validacao da quantidade limite de livros pro usuario
  def book_count
    errors.add(:base, "Limite de 10 livros cadastrados") if user.books.count > 9
  end
end
