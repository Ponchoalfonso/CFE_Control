class CreateTransformationRatioTransformers < ActiveRecord::Migration[5.0]
  def change
    create_table :transformation_ratio_transformers do |t|
      t.int :outlet_tap
      t.float :nominal_relationship
      t.float :step_a
      t.float :step_b
      t.float :step_c
      t.float :difference

      t.timestamps
    end
  end
end
