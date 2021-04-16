require 'rails_helper'

RSpec.describe TagContent, type: :model do
  describe 'associations' do
    it { should belong_to(:tag) }
    it { should belong_to(:content) }
  end
end
