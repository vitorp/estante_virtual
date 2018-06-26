# frozen_string_literal: true

# Classe livro responsavel pelas validacoes e relacionamentos dos objetos livro
class User < ApplicationRecord
  has_many :books, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, presence: true, length: {maximum: 15}
  validates :nickname, uniqueness: true, presence: true, length: {maximum: 5}
  validates :password, presence: true, length: {minimum: 4}
  validates :phone, presence: true
end
