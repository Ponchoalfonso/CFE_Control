class CreateInsulationResistenceTransformers < ActiveRecord::Migration[5.0]
  def change
    create_table :insulation_resistence_transformers do |t|
      t.integer :proof
      t.string :line
      t.string :guard
      t.string :earth
      t.integer :mide
      t.integer :number
      t.decimal :time
      t.decimal :resistance

      t.timestamps
    end
  end
end
