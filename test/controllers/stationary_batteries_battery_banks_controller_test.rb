require 'test_helper'

class StationaryBatteriesBatteryBanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stationary_batteries_battery_bank = stationary_batteries_battery_banks(:one)
  end

  test "should get index" do
    get stationary_batteries_battery_banks_url
    assert_response :success
  end

  test "should get new" do
    get new_stationary_batteries_battery_bank_url
    assert_response :success
  end

  test "should create stationary_batteries_battery_bank" do
    assert_difference('StationaryBatteriesBatteryBank.count') do
      post stationary_batteries_battery_banks_url, params: { stationary_batteries_battery_bank: { amperage_15min: @stationary_batteries_battery_bank.amperage_15min, amperage_1hr: @stationary_batteries_battery_bank.amperage_1hr, amperage_2hr: @stationary_batteries_battery_bank.amperage_2hr, amperage_30min: @stationary_batteries_battery_bank.amperage_30min, amperage_5min: @stationary_batteries_battery_bank.amperage_5min, cell: @stationary_batteries_battery_bank.cell, voltage_15min: @stationary_batteries_battery_bank.voltage_15min, voltage_1hr: @stationary_batteries_battery_bank.voltage_1hr, voltage_2hr: @stationary_batteries_battery_bank.voltage_2hr, voltage_30min: @stationary_batteries_battery_bank.voltage_30min, voltage_5min: @stationary_batteries_battery_bank.voltage_5min, without_charge: @stationary_batteries_battery_bank.without_charge } }
    end

    assert_redirected_to stationary_batteries_battery_bank_url(StationaryBatteriesBatteryBank.last)
  end

  test "should show stationary_batteries_battery_bank" do
    get stationary_batteries_battery_bank_url(@stationary_batteries_battery_bank)
    assert_response :success
  end

  test "should get edit" do
    get edit_stationary_batteries_battery_bank_url(@stationary_batteries_battery_bank)
    assert_response :success
  end

  test "should update stationary_batteries_battery_bank" do
    patch stationary_batteries_battery_bank_url(@stationary_batteries_battery_bank), params: { stationary_batteries_battery_bank: { amperage_15min: @stationary_batteries_battery_bank.amperage_15min, amperage_1hr: @stationary_batteries_battery_bank.amperage_1hr, amperage_2hr: @stationary_batteries_battery_bank.amperage_2hr, amperage_30min: @stationary_batteries_battery_bank.amperage_30min, amperage_5min: @stationary_batteries_battery_bank.amperage_5min, cell: @stationary_batteries_battery_bank.cell, voltage_15min: @stationary_batteries_battery_bank.voltage_15min, voltage_1hr: @stationary_batteries_battery_bank.voltage_1hr, voltage_2hr: @stationary_batteries_battery_bank.voltage_2hr, voltage_30min: @stationary_batteries_battery_bank.voltage_30min, voltage_5min: @stationary_batteries_battery_bank.voltage_5min, without_charge: @stationary_batteries_battery_bank.without_charge } }
    assert_redirected_to stationary_batteries_battery_bank_url(@stationary_batteries_battery_bank)
  end

  test "should destroy stationary_batteries_battery_bank" do
    assert_difference('StationaryBatteriesBatteryBank.count', -1) do
      delete stationary_batteries_battery_bank_url(@stationary_batteries_battery_bank)
    end

    assert_redirected_to stationary_batteries_battery_banks_url
  end
end
