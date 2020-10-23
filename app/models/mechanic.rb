class Mechanic < ApplicationRecord
  has_many :assigned_mechanics
  has_many :rides, through: :assigned_mechanics

  validates_presence_of :name
  validates_presence_of :experience
end
