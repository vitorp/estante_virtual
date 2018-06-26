# frozen_string_literal: true

# Classe livro responsável pelas validações e relacionamentos dos objetos livro
class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book
end
