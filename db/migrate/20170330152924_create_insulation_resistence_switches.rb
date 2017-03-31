class CreateInsulationResistenceSwitches < ActiveRecord::Migration[5.0]
  def change
    create_table :insulation_resistence_switches do |t|
      t.integer :phase
      t.integer :proof
      t.boolean :position_switch
      t.string :connection
      t.decimal :date

      t.timestamps
    end
  end
end
