class CreateTransformationRatioTransfromers < ActiveRecord::Migration[5.0]
  def change
    create_table :transformation_ratio_transfromers do |t|
      t.integer :outlet
      t.decimal :relationship
      t.decimal :step_a
      t.decimal :step_b
      t.decimal :step_c
      t.decimal :difference

      t.timestamps
    end
  end
end
