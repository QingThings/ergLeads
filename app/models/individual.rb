class Individual < ApplicationRecord
  validates :first_name, :last_name, presence: true
  has_and_belongs_to_many :organizations
  has_and_belongs_to_many :venues
end
