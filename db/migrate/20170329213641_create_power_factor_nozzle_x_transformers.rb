class CreatePowerFactorNozzleXTransformers < ActiveRecord::Migration[5.0]
  def change
    create_table :power_factor_nozzle_x_transformers do |t|
      t.int :number
      t.string :mide
      t.string :test_mode
      t.float :lost_mv

      t.timestamps
    end
  end
end
