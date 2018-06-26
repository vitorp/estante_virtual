# frozen_string_literal: true

# Classe livro responsavel pelas validacoes e relacionamentos dos objetos livro
class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book
end
