require 'test_helper'

class IrswitchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @irswitch = irswitches(:one)
  end

  test "should get index" do
    get irswitches_url
    assert_response :success
  end

  test "should get new" do
    get new_irswitch_url
    assert_response :success
  end

  test "should create irswitch" do
    assert_difference('Irswitch.count') do
      post irswitches_url, params: { irswitch: { connection: @irswitch.connection, gigaohms: @irswitch.gigaohms, phase: @irswitch.phase, position_switch: @irswitch.position_switch, proof: @irswitch.proof } }
    end

    assert_redirected_to irswitch_url(Irswitch.last)
  end

  test "should show irswitch" do
    get irswitch_url(@irswitch)
    assert_response :success
  end

  test "should get edit" do
    get edit_irswitch_url(@irswitch)
    assert_response :success
  end

  test "should update irswitch" do
    patch irswitch_url(@irswitch), params: { irswitch: { connection: @irswitch.connection, gigaohms: @irswitch.gigaohms, phase: @irswitch.phase, position_switch: @irswitch.position_switch, proof: @irswitch.proof } }
    assert_redirected_to irswitch_url(@irswitch)
  end

  test "should destroy irswitch" do
    assert_difference('Irswitch.count', -1) do
      delete irswitch_url(@irswitch)
    end

    assert_redirected_to irswitches_url
  end
end
