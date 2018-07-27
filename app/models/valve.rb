class Valve < ApplicationRecord
  belongs_to :user
  has_many :sensors
  validates :name, presence: true, uniqueness: true
end
