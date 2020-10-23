require 'rails_helper'

RSpec.describe 'As a user' do
  describe 'When I visit a mechanics index page' do
    it 'I see information on all mechanics' do
      @mechanic_1 = Mechanic.create!(
        name: 'Sam Mills',
        experience: 10
      )
      @mechanic_2 = Mechanic.create!(
        name: 'Kara Smith',
        experience: 11
      )

      visit '/mechanics/index'

      expect(page).to have_content('All Mechanics')
      expect(page).to have_content("#{@mechanic_1.name} - #{@mechanic_1.experience} years of experience")
      expect(page).to have_content("#{@mechanic_2.name} - #{@mechanic_2.experience} years of experience")
    end
  end
end
