class CreateSbbanks < ActiveRecord::Migration[5.0]
  def change
    create_table :sbbanks do |t|
      t.integer :cell
      t.decimal :without_charge
      t.decimal :voltage_5min
      t.decimal :amperage_5min
      t.decimal :voltage_15min
      t.decimal :amperage_15min
      t.decimal :voltage_30min
      t.decimal :amperage_30min
      t.decimal :voltage_1hr
      t.decimal :amperage_1hr
      t.decimal :voltage_2hr
      t.decimal :amperage_2hr

      t.integer :t_number
      t.timestamps
    end
  end
end
