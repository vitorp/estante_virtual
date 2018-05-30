# frozen_string_literal: true

require "rails_helper"

RSpec.describe Book, type: :model do
  it { should belong_to :user }
  it { should have_many :reviews }

  it { should validate_uniqueness_of :title }

  it { should validate_presence_of :title }
  it { should validate_presence_of :author }
  it { should validate_presence_of :publication_date }
  it { should validate_presence_of :code }
  it { should validate_presence_of :genre }
end
