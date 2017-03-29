class CreateInsulationResistanceTransformers < ActiveRecord::Migration[5.0]
  def change
    create_table :insulation_resistance_transformers do |t|
      t.int :proof
      t.string :line
      t.string :guard
      t.string :earth
      t.int :mide
      t.int :number
      t.float :weather
      t.float :resistance

      t.timestamps
    end
  end
end
