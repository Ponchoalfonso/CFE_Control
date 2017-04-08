require 'test_helper'

class HnswitchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hnswitch = hnswitches(:one)
  end

  test "should get index" do
    get hnswitches_url
    assert_response :success
  end

  test "should get new" do
    get new_hnswitch_url
    assert_response :success
  end

  test "should create hnswitch" do
    assert_difference('Hnswitch.count') do
      post hnswitches_url, params: { hnswitch: { mv: @hnswitch.mv, nozzle: @hnswitch.nozzle, phase: @hnswitch.phase } }
    end

    assert_redirected_to hnswitch_url(Hnswitch.last)
  end

  test "should show hnswitch" do
    get hnswitch_url(@hnswitch)
    assert_response :success
  end

  test "should get edit" do
    get edit_hnswitch_url(@hnswitch)
    assert_response :success
  end

  test "should update hnswitch" do
    patch hnswitch_url(@hnswitch), params: { hnswitch: { mv: @hnswitch.mv, nozzle: @hnswitch.nozzle, phase: @hnswitch.phase } }
    assert_redirected_to hnswitch_url(@hnswitch)
  end

  test "should destroy hnswitch" do
    assert_difference('Hnswitch.count', -1) do
      delete hnswitch_url(@hnswitch)
    end

    assert_redirected_to hnswitches_url
  end
end
