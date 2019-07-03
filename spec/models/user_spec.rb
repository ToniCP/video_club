require 'rails_helper'

RSpec.describe User, type: :model do

  context 'fields' do
    it { is_expected.to have_field(:name).of_type(String) }
    it { is_expected.to have_field(:email).of_type(String) }
    it { is_expected.to have_field(:encrypted_password).of_type(String) }
    it { is_expected.to have_field(:role_user).of_type(String) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:encrypted_password) }
    it { is_expected.to validate_presence_of(:role_user) }
    it { is_expected.to validate_uniqueness_of(:email) }
  end
end
