require 'test_helper'

class PfswitchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pfswitch = pfswitches(:one)
  end

  test "should get index" do
    get pfswitches_url
    assert_response :success
  end

  test "should get new" do
    get new_pfswitch_url
    assert_response :success
  end

  test "should create pfswitch" do
    assert_difference('Pfswitch.count') do
      post pfswitches_url, params: { pfswitch: { fp_current: @pfswitch.fp_current, mv: @pfswitch.mv, phase: @pfswitch.phase, proof: @pfswitch.proof, selector_switch: @pfswitch.selector_switch, switch_position: @pfswitch.switch_position, tat: @pfswitch.tat, tbt: @pfswitch.tbt } }
    end

    assert_redirected_to pfswitch_url(Pfswitch.last)
  end

  test "should show pfswitch" do
    get pfswitch_url(@pfswitch)
    assert_response :success
  end

  test "should get edit" do
    get edit_pfswitch_url(@pfswitch)
    assert_response :success
  end

  test "should update pfswitch" do
    patch pfswitch_url(@pfswitch), params: { pfswitch: { fp_current: @pfswitch.fp_current, mv: @pfswitch.mv, phase: @pfswitch.phase, proof: @pfswitch.proof, selector_switch: @pfswitch.selector_switch, switch_position: @pfswitch.switch_position, tat: @pfswitch.tat, tbt: @pfswitch.tbt } }
    assert_redirected_to pfswitch_url(@pfswitch)
  end

  test "should destroy pfswitch" do
    assert_difference('Pfswitch.count', -1) do
      delete pfswitch_url(@pfswitch)
    end

    assert_redirected_to pfswitches_url
  end
end
