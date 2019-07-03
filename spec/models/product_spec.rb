require 'rails_helper'

RSpec.describe Product, type: :model do

  context 'fields' do
    it { is_expected.to have_field(:title).of_type(String) }
    it { is_expected.to have_field(:description).of_type(String) }
    it { is_expected.to have_field(:image_url).of_type(String) }
    it { is_expected.to have_field(:date).of_type(String) }
    it { is_expected.to have_field(:price).of_type(Float) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:image_url) }
    it { is_expected.to validate_presence_of(:date) }
    it { is_expected.to validate_numericality_of(:price) }
  end

  context 'associations' do
    it { is_expected.to have_many :line_items }
    it { is_expected.to have_many(:comments).with_dependent(:destroy) }
  end

=begin
  context 'callbacks' do
    subject(:product) { FactoryGirl.build(:product) }
  end

  context 'scopes' do
    subject(:product) { FactoryGirl.build(:product) }
  end
=end

end
