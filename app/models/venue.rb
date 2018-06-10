class Venue < ApplicationRecord
  TYPES = [
    'FAIR',
    'FESTIVAL',
    'THEATER',
    'CORPORATE',
    'PRIVATE',
    'SUMMER CONCERT SERIES',
    'SPEEDWAY',
    'CASINO',
    'PERFORMING ARTS CENTER',
    'OPERA HOUSE',
    'AUDITORIUM',
    'OTHER'
  ]

  validates :name, presence: true
  validates :kind, allow_blank: true, inclusion: TYPES
  has_and_belongs_to_many :individuals
  has_and_belongs_to_many :organizations
  has_many :events
end
