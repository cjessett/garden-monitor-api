class CreateValves < ActiveRecord::Migration[5.2]
  def change
    create_table :valves do |t|
      t.string :name
      t.string :serial

      t.timestamps
    end
  end
end
