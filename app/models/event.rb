class Event < ApplicationRecord
  validates :name, presence: true
  belongs_to :venue
end
