class CreateInsulationResistanceSwitches < ActiveRecord::Migration[5.0]
  def change
    create_table :insulation_resistance_switches do |t|
      t.int :phase
      t.int :proof
      t.boolean :switch_position
      t.string :connection
      t.float :date

      t.timestamps
    end
  end
end
