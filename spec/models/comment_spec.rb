require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'fields' do
    it { is_expected.to have_field(:commenter).of_type(String) }
    it { is_expected.to have_field(:body).of_type(String) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:commenter) }
    it { is_expected.to validate_presence_of(:body) }
  end

  context 'associations' do
    it { is_expected.to belong_to(:product) }
  end
end
