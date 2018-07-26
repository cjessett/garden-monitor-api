class CreateSensors < ActiveRecord::Migration[5.2]
  def change
    create_table :sensors do |t|
      t.string :name
      t.string :serial
      t.references :valve, foreign_key: true

      t.timestamps
    end
  end
end
