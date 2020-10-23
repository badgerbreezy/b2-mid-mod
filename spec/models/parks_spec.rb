require 'rails_helper'

describe Parks do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :admission }
  end

  describe 'relationship' do
    it { should have_many :rides }
  end
end
