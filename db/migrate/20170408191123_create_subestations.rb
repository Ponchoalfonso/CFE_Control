class CreateSubestations < ActiveRecord::Migration[5.0]
  def change
    create_table :subestations do |t|
      t.string :name
      t.string :abreviation
      t.integer :identifier
      t.references :zone

      t.timestamps
    end
  end
end
