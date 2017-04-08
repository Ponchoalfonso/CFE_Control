class CreateTrtranformers < ActiveRecord::Migration[5.0]
  def change
    create_table :trtranformers do |t|
      t.integer :take_tap
      t.decimal :nominal_relationship
      t.decimal :phase
      t.decimal :difference

      t.timestamps
    end
  end
end
