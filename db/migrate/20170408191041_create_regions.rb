class CreateRegions < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :abreviation
      t.integer :identifier

      t.timestamps
    end
  end
end
