class Sensor < ApplicationRecord
  belongs_to :valve, optional: true
end
