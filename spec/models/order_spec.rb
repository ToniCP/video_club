require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'fields' do
    it { is_expected.to have_field(:name).of_type(String) }
    it { is_expected.to have_field(:address).of_type(String) }
    it { is_expected.to have_field(:email).of_type(String) }
    it { is_expected.to have_field(:pay_type).of_type(String) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:address) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_inclusion_of(:pay_type) }
  end

  context 'associations' do
    it { is_expected.to have_many(:line_items).with_dependent(:destroy) }
  end
end
