class CreateHotCollarSwitches < ActiveRecord::Migration[5.0]
  def change
    create_table :hot_collar_switches do |t|
      t.string :phase
      t.integer :nozzle
      t.decimal :mv

      t.timestamps
    end
  end
end
