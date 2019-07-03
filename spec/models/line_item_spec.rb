require 'rails_helper'

RSpec.describe LineItem, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:order) }
    it { is_expected.to belong_to(:product) }
    it { is_expected.to belong_to(:cart) }
  end
end
