require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:contents) }
    it { should have_many(:tags) }
  end

  describe 'validations' do
    it { should validate_uniqueness_of(:email).case_insensitive }
  end
end
