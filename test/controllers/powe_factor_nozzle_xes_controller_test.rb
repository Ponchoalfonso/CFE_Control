require 'test_helper'

class PoweFactorNozzleXesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @powe_factor_nozzle_x = powe_factor_nozzle_xes(:one)
  end

  test "should get index" do
    get powe_factor_nozzle_xes_url
    assert_response :success
  end

  test "should get new" do
    get new_powe_factor_nozzle_x_url
    assert_response :success
  end

  test "should create powe_factor_nozzle_x" do
    assert_difference('PoweFactorNozzleX.count') do
      post powe_factor_nozzle_xes_url, params: { powe_factor_nozzle_x: { lost_mv: @powe_factor_nozzle_x.lost_mv, mide: @powe_factor_nozzle_x.mide, mode_proof: @powe_factor_nozzle_x.mode_proof, number: @powe_factor_nozzle_x.number } }
    end

    assert_redirected_to powe_factor_nozzle_x_url(PoweFactorNozzleX.last)
  end

  test "should show powe_factor_nozzle_x" do
    get powe_factor_nozzle_x_url(@powe_factor_nozzle_x)
    assert_response :success
  end

  test "should get edit" do
    get edit_powe_factor_nozzle_x_url(@powe_factor_nozzle_x)
    assert_response :success
  end

  test "should update powe_factor_nozzle_x" do
    patch powe_factor_nozzle_x_url(@powe_factor_nozzle_x), params: { powe_factor_nozzle_x: { lost_mv: @powe_factor_nozzle_x.lost_mv, mide: @powe_factor_nozzle_x.mide, mode_proof: @powe_factor_nozzle_x.mode_proof, number: @powe_factor_nozzle_x.number } }
    assert_redirected_to powe_factor_nozzle_x_url(@powe_factor_nozzle_x)
  end

  test "should destroy powe_factor_nozzle_x" do
    assert_difference('PoweFactorNozzleX.count', -1) do
      delete powe_factor_nozzle_x_url(@powe_factor_nozzle_x)
    end

    assert_redirected_to powe_factor_nozzle_xes_url
  end
end
