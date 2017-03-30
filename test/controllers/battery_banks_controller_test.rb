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
      post battery_banks_url, params: { battery_bank: { name: @battery_bank.name, number: @battery_bank.number } }
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
    patch battery_bank_url(@battery_bank), params: { battery_bank: { name: @battery_bank.name, number: @battery_bank.number } }
    assert_redirected_to battery_bank_url(@battery_bank)
  end

  test "should destroy battery_bank" do
    assert_difference('BatteryBank.count', -1) do
      delete battery_bank_url(@battery_bank)
    end

    assert_redirected_to battery_banks_url
  end
end
