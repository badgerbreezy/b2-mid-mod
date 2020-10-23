require 'rails_helper'

describe Rides do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :rating }
  end

  describe 'relationship' do
    it { should have_many :assigned_mechanics }
    it { should have_many(:mechanics).through(:assigned_mechanics)}
  end
end
