require 'rails_helper'

RSpec.describe Mechanic do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :experience }
  end

  describe 'relationship' do
    it { should have_many :assigned_mechanics }
    it { should have_many(:rides).through(:assigned_mechanics)}
  end

  describe 'instance methods' do
    it '#add_pet' do
        @mechanic_1 = Mechanic.create!(
          name: 'Sam Mills',
          experience: 10
        )
        @mechanic_2 = Mechanic.create!(
          name: 'Kara Smith',
          experience: 11
        )
        @park_1 = Park.create!(
          name: 'Seis Banderas',
          admission: '49.95'
        )
        @ride_1 = @park_1.rides.create!(
          name: 'Corredor de Rayos',
          rating: '9'
        )
        @ride_2 = @park_1.rides.create!(
          name: 'Corredor de Tormenta',
          rating: '6'
        )
        @ride_3 = @park_1.rides.create!(
          name: 'El Grande Osito',
          rating: '8'
        )

      AssignedMechanic.create!(

      )
      AssignedMechanic.create!(
      
      )

      expect(@mechanic_1.rides.count).to eq(2)
    end
  end
end
