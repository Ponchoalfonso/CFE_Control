require 'test_helper'

class InsulationResistenceSwitchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insulation_resistence_switch = insulation_resistence_switches(:one)
  end

  test "should get index" do
    get insulation_resistence_switches_url
    assert_response :success
  end

  test "should get new" do
    get new_insulation_resistence_switch_url
    assert_response :success
  end

  test "should create insulation_resistence_switch" do
    assert_difference('InsulationResistenceSwitch.count') do
      post insulation_resistence_switches_url, params: { insulation_resistence_switch: { connection: @insulation_resistence_switch.connection, date: @insulation_resistence_switch.date, phase: @insulation_resistence_switch.phase, position_switch: @insulation_resistence_switch.position_switch, proof: @insulation_resistence_switch.proof } }
    end

    assert_redirected_to insulation_resistence_switch_url(InsulationResistenceSwitch.last)
  end

  test "should show insulation_resistence_switch" do
    get insulation_resistence_switch_url(@insulation_resistence_switch)
    assert_response :success
  end

  test "should get edit" do
    get edit_insulation_resistence_switch_url(@insulation_resistence_switch)
    assert_response :success
  end

  test "should update insulation_resistence_switch" do
    patch insulation_resistence_switch_url(@insulation_resistence_switch), params: { insulation_resistence_switch: { connection: @insulation_resistence_switch.connection, date: @insulation_resistence_switch.date, phase: @insulation_resistence_switch.phase, position_switch: @insulation_resistence_switch.position_switch, proof: @insulation_resistence_switch.proof } }
    assert_redirected_to insulation_resistence_switch_url(@insulation_resistence_switch)
  end

  test "should destroy insulation_resistence_switch" do
    assert_difference('InsulationResistenceSwitch.count', -1) do
      delete insulation_resistence_switch_url(@insulation_resistence_switch)
    end

    assert_redirected_to insulation_resistence_switches_url
  end
end
