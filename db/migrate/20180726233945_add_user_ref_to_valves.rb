class AddUserRefToValves < ActiveRecord::Migration[5.2]
  def change
    add_reference :valves, :user, foreign_key: true
  end
end
