require 'rails_helper'

RSpec.describe Comment, type: :model do

  context 'fiels' do
    it { is_expected.to have_field(:body).of_type(String) }
  end

  context 'validates' do
    it { is_expected.to validate_presence_of(:body) }
  end

  context 'associations' do
    it { is_expected.to belong_to :user }
    it { is_expected.to belong_to :product }
  end
end
