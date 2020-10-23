require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'When I visit an amusement park show page' do
# |---------->|setup|<----------|
    before :each do
      @park_1 = Park.create!(
        name: 'Seis Banderas',
        admission: '49.95'
      )
    end
# |---------->|tests|<----------|
    it 'I can see the info for that amusement park' do
      visit "/parks/#{@park_1.id}"
      expect(page).to have_content(@park_1.name)
      expect(page).to have_content(@park_1.admission)
    end
  end
end
