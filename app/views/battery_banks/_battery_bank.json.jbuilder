<<<<<<< HEAD
json.extract! battery_bank, :id, :cell, :without_charge, :voltage_5min, :amperage_5min, :voltage_15min, :amperage_15min, :voltage_30min, :amperage_30min, :voltage_1hr, :amperage_1hr, :voltage_2hr, :amperage_2hr, :created_at, :updated_at
=======
json.extract! battery_bank, :id, :name, :number, :created_at, :updated_at
>>>>>>> master
json.url battery_bank_url(battery_bank, format: :json)
