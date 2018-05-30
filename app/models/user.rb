# frozen_string_literal: true

class User < ApplicationRecord
  has_many :books, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :nickname, uniqueness: true, presence: true
  validates :password, presence: true
  validates :phone, presence: true
end
