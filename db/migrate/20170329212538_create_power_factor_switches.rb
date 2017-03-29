class CreatePowerFactorSwitches < ActiveRecord::Migration[5.0]
  def change
    create_table :power_factor_switches do |t|
      t.int :phase
      t.int :proof
      t.boolean :switch_position
      t.int :tat
      t.string :tbt
      t.string :selector_switch
      t.float :mv
      t.float :fp_current

      t.timestamps
    end
  end
end
