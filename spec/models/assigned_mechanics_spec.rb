require 'rails_helper'

describe AssignedMechanics do
  describe 'relationship' do
    it { should belong_to :rides }
    it { should belong_to :mechanics }
  end
end
