class AddUserRefToSensors < ActiveRecord::Migration[5.2]
  def change
    add_reference :sensors, :user, foreign_key: true
  end
end
