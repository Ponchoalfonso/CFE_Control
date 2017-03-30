require 'test_helper'

class BatteryBanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battery_bank = battery_banks(:one)
  end

  test "should get index" do
    get battery_banks_url
    assert_response :success
  end

  test "should get new" do
    get new_battery_bank_url
    assert_response :success
  end

  test "should create battery_bank" do
    assert_difference('BatteryBank.count') do
<<<<<<< HEAD
      post battery_banks_url, params: { battery_bank: { amperage_15min: @battery_bank.amperage_15min, amperage_1hr: @battery_bank.amperage_1hr, amperage_2hr: @battery_bank.amperage_2hr, amperage_30min: @battery_bank.amperage_30min, amperage_5min: @battery_bank.amperage_5min, cell: @battery_bank.cell, voltage_15min: @battery_bank.voltage_15min, voltage_1hr: @battery_bank.voltage_1hr, voltage_2hr: @battery_bank.voltage_2hr, voltage_30min: @battery_bank.voltage_30min, voltage_5min: @battery_bank.voltage_5min, without_charge: @battery_bank.without_charge } }
=======
      post battery_banks_url, params: { battery_bank: { name: @battery_bank.name, number: @battery_bank.number } }
>>>>>>> master
    end

    assert_redirected_to battery_bank_url(BatteryBank.last)
  end

  test "should show battery_bank" do
    get battery_bank_url(@battery_bank)
    assert_response :success
  end

  test "should get edit" do
    get edit_battery_bank_url(@battery_bank)
    assert_response :success
  end

  test "should update battery_bank" do
<<<<<<< HEAD
    patch battery_bank_url(@battery_bank), params: { battery_bank: { amperage_15min: @battery_bank.amperage_15min, amperage_1hr: @battery_bank.amperage_1hr, amperage_2hr: @battery_bank.amperage_2hr, amperage_30min: @battery_bank.amperage_30min, amperage_5min: @battery_bank.amperage_5min, cell: @battery_bank.cell, voltage_15min: @battery_bank.voltage_15min, voltage_1hr: @battery_bank.voltage_1hr, voltage_2hr: @battery_bank.voltage_2hr, voltage_30min: @battery_bank.voltage_30min, voltage_5min: @battery_bank.voltage_5min, without_charge: @battery_bank.without_charge } }
=======
    patch battery_bank_url(@battery_bank), params: { battery_bank: { name: @battery_bank.name, number: @battery_bank.number } }
>>>>>>> master
    assert_redirected_to battery_bank_url(@battery_bank)
  end

  test "should destroy battery_bank" do
    assert_difference('BatteryBank.count', -1) do
      delete battery_bank_url(@battery_bank)
    end

    assert_redirected_to battery_banks_url
  end
end
