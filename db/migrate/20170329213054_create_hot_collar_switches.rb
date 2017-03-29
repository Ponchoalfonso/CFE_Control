class CreateHotCollarSwitches < ActiveRecord::Migration[5.0]
  def change
    create_table :hot_collar_switches do |t|
      t.int :phase
      t.string :nozzle
      t.float :mv

      t.timestamps
    end
  end
end
