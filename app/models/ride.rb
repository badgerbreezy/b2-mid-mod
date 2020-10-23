class Ride < ApplicationRecord
  belongs_to :park
  has_many :assigned_mechanics
  has_many :mechanics, through: :assigned_mechanics

  validates_presence_of :name
  validates_presence_of :rating
end
