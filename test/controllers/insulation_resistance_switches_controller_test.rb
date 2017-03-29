require 'test_helper'

class InsulationResistanceSwitchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insulation_resistance_switch = insulation_resistance_switches(:one)
  end

  test "should get index" do
    get insulation_resistance_switches_url
    assert_response :success
  end

  test "should get new" do
    get new_insulation_resistance_switch_url
    assert_response :success
  end

  test "should create insulation_resistance_switch" do
    assert_difference('InsulationResistanceSwitch.count') do
      post insulation_resistance_switches_url, params: { insulation_resistance_switch: { connection: @insulation_resistance_switch.connection, date: @insulation_resistance_switch.date, phase: @insulation_resistance_switch.phase, proof: @insulation_resistance_switch.proof, switch_position: @insulation_resistance_switch.switch_position } }
    end

    assert_redirected_to insulation_resistance_switch_url(InsulationResistanceSwitch.last)
  end

  test "should show insulation_resistance_switch" do
    get insulation_resistance_switch_url(@insulation_resistance_switch)
    assert_response :success
  end

  test "should get edit" do
    get edit_insulation_resistance_switch_url(@insulation_resistance_switch)
    assert_response :success
  end

  test "should update insulation_resistance_switch" do
    patch insulation_resistance_switch_url(@insulation_resistance_switch), params: { insulation_resistance_switch: { connection: @insulation_resistance_switch.connection, date: @insulation_resistance_switch.date, phase: @insulation_resistance_switch.phase, proof: @insulation_resistance_switch.proof, switch_position: @insulation_resistance_switch.switch_position } }
    assert_redirected_to insulation_resistance_switch_url(@insulation_resistance_switch)
  end

  test "should destroy insulation_resistance_switch" do
    assert_difference('InsulationResistanceSwitch.count', -1) do
      delete insulation_resistance_switch_url(@insulation_resistance_switch)
    end

    assert_redirected_to insulation_resistance_switches_url
  end
end
