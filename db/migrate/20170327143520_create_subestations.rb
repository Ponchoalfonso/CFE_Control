class CreateSubestations < ActiveRecord::Migration[5.0]
  def change
    create_table :subestations do |t|
      t.string :name
      t.string :abreviation
      t.string :identifier

      t.timestamps
    end
  end
end
