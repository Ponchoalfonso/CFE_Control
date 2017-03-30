class CreatePowerTransformers < ActiveRecord::Migration[5.0]
  def change
    create_table :power_transformers do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
