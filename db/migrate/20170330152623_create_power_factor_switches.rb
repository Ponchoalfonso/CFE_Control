class CreatePowerFactorSwitches < ActiveRecord::Migration[5.0]
  def change
    create_table :power_factor_switches do |t|
      t.integer :phase
      t.integer :proof
      t.boolean :position_switches
      t.integer :tat
      t.string :tbt
      t.string :selector
      t.decimal :mv
      t.decimal :fp_current

      t.timestamps
    end
  end
end
