require 'rails_helper'

describe Mechanics do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :experience }
  end

  describe 'relationship' do
    it { should have_many :assigned_mechanics }
    it { should have_many(:rides).through(:assigned_mechanics)}
  end
end
