require 'rails_helper'

RSpec.describe 'As a user' do
  describe 'When I see the mechanics show page' do
# |---------->|setup|<----------|
    before :each do
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
    end
# |---------->|tests|<----------|
    it 'I can see the info for each mechanic' do
      visit "/mechanics/#{@mechanic_1.id}"

      expect(page).to have_content(@mechanic_1.name)
      expect(page).to have_content(@mechanic_1.experience)
    end

    it 'I can fill in a form to add a ride to each mechanics workload' do
      visit "/mechanics/#{@mechanic_1.id}"

      fill_in :ride_id, with: @ride_1.id
      click_button 'Submit'
      expect(current_path).to eq("/mechanics/#{@mechanic_1.id}")

      expect(page).to have_content(@ride_1.name)

      fill_in :ride_id, with: @ride_2.id
      click_button 'Submit'
      expect(current_path).to eq("/mechanics/#{@mechanic_1.id}")

      expect(page).to have_content(@ride_2.name)
    end
  end
end
