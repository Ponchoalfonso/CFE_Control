class CreateZones < ActiveRecord::Migration[5.0]
  def change
    create_table :zones do |t|
      t.string :name
      t.string :abreviation
      t.integer :identifier
      t.references :region
      t.timestamps
    end
  end
end
