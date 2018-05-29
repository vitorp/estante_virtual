# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates_uniqueness_of :title
end
