require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'When I visit an amusement park show page' do
# |---------->|setup|<----------|
    before :each do
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
    end
# |---------->|tests|<----------|
    it 'I can see the info for that amusement park' do
      visit "/parks/#{@park_1.id}"
      expect(page).to have_content(@park_1.name)
      expect(page).to have_content(@park_1.admission)
    end

    it 'I can see each rides name and thrill rating for that park' do
      visit "/parks/#{@park_1.id}"

      within "#ride-#{@ride_2.id}" do
        expect(page).to have_content(@ride_2.name)
        expect(page).to have_content(@ride_2.rating)
      end
    end
  end
end
