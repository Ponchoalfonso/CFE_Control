class CreateBatteryBanks < ActiveRecord::Migration[5.0]
  def change
    create_table :battery_banks do |t|
      t.int :cell
      t.float :without_charge
      t.float :voltage_5min
      t.float :amperage_5min
      t.float :voltage_15min
      t.float :amperage_15min
      t.float :voltage_30min
      t.float :amperage_30min
      t.float :voltage_1hr
      t.float :amperage_1hr
      t.float :voltage_2hr
      t.float :amperage_2hr

      t.timestamps
    end
  end
end
