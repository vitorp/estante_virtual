# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :nickname }
  it { is_expected.to validate_presence_of :password }
  it { is_expected.to validate_presence_of :phone }

  it { is_expected.to validate_length_of(:name).is_at_most(15) }
  it { is_expected.to validate_length_of(:nickname).is_at_most(5) }
  it { is_expected.to validate_length_of(:password).is_at_least(4) }
end
