require 'rails_helper'

RSpec.describe Park do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :admission }
  end

  describe 'relationship' do
    it { should have_many :rides }
  end

  describe 'instance methods' do
    it '#average_thrill_rating' do
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

      expect(@park_1.average_thrill_rating.round(2)).to eq(7.67)
    end
  end
end
