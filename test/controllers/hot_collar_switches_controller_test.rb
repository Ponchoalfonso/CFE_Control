require 'test_helper'

class HotCollarSwitchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hot_collar_switch = hot_collar_switches(:one)
  end

  test "should get index" do
    get hot_collar_switches_url
    assert_response :success
  end

  test "should get new" do
    get new_hot_collar_switch_url
    assert_response :success
  end

  test "should create hot_collar_switch" do
    assert_difference('HotCollarSwitch.count') do
      post hot_collar_switches_url, params: { hot_collar_switch: { mv: @hot_collar_switch.mv, nozzle: @hot_collar_switch.nozzle, phase: @hot_collar_switch.phase } }
    end

    assert_redirected_to hot_collar_switch_url(HotCollarSwitch.last)
  end

  test "should show hot_collar_switch" do
    get hot_collar_switch_url(@hot_collar_switch)
    assert_response :success
  end

  test "should get edit" do
    get edit_hot_collar_switch_url(@hot_collar_switch)
    assert_response :success
  end

  test "should update hot_collar_switch" do
    patch hot_collar_switch_url(@hot_collar_switch), params: { hot_collar_switch: { mv: @hot_collar_switch.mv, nozzle: @hot_collar_switch.nozzle, phase: @hot_collar_switch.phase } }
    assert_redirected_to hot_collar_switch_url(@hot_collar_switch)
  end

  test "should destroy hot_collar_switch" do
    assert_difference('HotCollarSwitch.count', -1) do
      delete hot_collar_switch_url(@hot_collar_switch)
    end

    assert_redirected_to hot_collar_switches_url
  end
end
