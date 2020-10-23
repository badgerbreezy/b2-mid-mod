require 'rails_helper'

RSpec.describe AssignedMechanic do
  describe 'relationship' do
    it { should belong_to :ride }
    it { should belong_to :mechanic }
  end
end
