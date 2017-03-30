class CreateOwnUseTransformers < ActiveRecord::Migration[5.0]
  def change
    create_table :own_use_transformers do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
