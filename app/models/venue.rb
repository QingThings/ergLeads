class Venue < ApplicationRecord
  validates :name, presence: true
  has_and_belongs_to_many :individuals
  has_and_belongs_to_many :organizations
  has_many :events
end
