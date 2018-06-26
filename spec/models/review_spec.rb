# frozen_string_literal: true

require "rails_helper"

RSpec.describe Review, type: :model do
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :body }
  it { is_expected.to validate_presence_of :user }
  it { is_expected.to validate_presence_of :book }
  it { is_expected.to validate_length_of(:title).is_at_most(20) }
  it { is_expected.to validate_length_of(:body).is_at_most(40) }
end
