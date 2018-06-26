# frozen_string_literal: true

# Classe livro responsavel pelas validacoes e relacionamentos dos objetos livro
class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :user, presence: true
  validates :book, presence: true

  validates :title, presence: true, length: {maximum: 20}
  validates :body, presence: true, length: {maximum: 40}
end
