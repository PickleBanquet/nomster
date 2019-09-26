class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocoded_by
  validates :name, presence: true, length: { minimum: 4 }
  validates :address, presence: true
  validates :description, presence: true
end
