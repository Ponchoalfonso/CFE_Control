class CreatePoweFactorNozzleXes < ActiveRecord::Migration[5.0]
  def change
    create_table :powe_factor_nozzle_xes do |t|
      t.integer :number
      t.string :mide
      t.string :mode_proof
      t.decimal :lost_mv

      t.timestamps
    end
  end
end
