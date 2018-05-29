# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates_uniqueness_of :title

  validates_presence_of :title
  validates_presence_of :author
  validates_presence_of :code
  validates_presence_of :publication_date
  validates_presence_of :genre
end
