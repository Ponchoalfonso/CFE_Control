class CreateNeckalaceEnergizedBorXTransformers < ActiveRecord::Migration[5.0]
  def change
    create_table :neckalace_energized_bor_x_transformers do |t|
      t.integer :number
      t.string :mide
      t.string :mode_proof
      t.decimal :lost_mv

      t.timestamps
    end
  end
end
