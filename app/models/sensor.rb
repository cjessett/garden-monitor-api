class Sensor < ApplicationRecord
  belongs_to :user
  belongs_to :valve, optional: true
  validates :name, presence: true, uniqueness: true
end
