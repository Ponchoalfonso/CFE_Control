require 'test_helper'

class PowerFactorSwitchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @power_factor_switch = power_factor_switches(:one)
  end

  test "should get index" do
    get power_factor_switches_url
    assert_response :success
  end

  test "should get new" do
    get new_power_factor_switch_url
    assert_response :success
  end

  test "should create power_factor_switch" do
    assert_difference('PowerFactorSwitch.count') do
      post power_factor_switches_url, params: { power_factor_switch: { fp_current: @power_factor_switch.fp_current, mv: @power_factor_switch.mv, phase: @power_factor_switch.phase, position_switches: @power_factor_switch.position_switches, proof: @power_factor_switch.proof, selector: @power_factor_switch.selector, tat: @power_factor_switch.tat, tbt: @power_factor_switch.tbt } }
    end

    assert_redirected_to power_factor_switch_url(PowerFactorSwitch.last)
  end

  test "should show power_factor_switch" do
    get power_factor_switch_url(@power_factor_switch)
    assert_response :success
  end

  test "should get edit" do
    get edit_power_factor_switch_url(@power_factor_switch)
    assert_response :success
  end

  test "should update power_factor_switch" do
    patch power_factor_switch_url(@power_factor_switch), params: { power_factor_switch: { fp_current: @power_factor_switch.fp_current, mv: @power_factor_switch.mv, phase: @power_factor_switch.phase, position_switches: @power_factor_switch.position_switches, proof: @power_factor_switch.proof, selector: @power_factor_switch.selector, tat: @power_factor_switch.tat, tbt: @power_factor_switch.tbt } }
    assert_redirected_to power_factor_switch_url(@power_factor_switch)
  end

  test "should destroy power_factor_switch" do
    assert_difference('PowerFactorSwitch.count', -1) do
      delete power_factor_switch_url(@power_factor_switch)
    end

    assert_redirected_to power_factor_switches_url
  end
end
