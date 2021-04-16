require 'rails_helper'

RSpec.describe Content, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:tag_contents).dependent(:destroy) }
    it { should have_many(:tags).through(:tag_contents) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
  end
end
