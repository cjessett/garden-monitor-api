class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :sensors
  has_many :valve

  def valves
    return self.valve
  end

  # def to_token_payload
    # Returns the payload as a hash
  # end
end
