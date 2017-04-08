class CreateHnswitches < ActiveRecord::Migration[5.0]
  def change
    create_table :hnswitches do |t|
      t.string :phase
      t.integer :nozzle
      t.decimal :mv

      t.timestamps
    end
  end
end
