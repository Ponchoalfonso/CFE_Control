require 'test_helper'

class PoweFactorNozzleHsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @powe_factor_nozzle_h = powe_factor_nozzle_hs(:one)
  end

  test "should get index" do
    get powe_factor_nozzle_hs_url
    assert_response :success
  end

  test "should get new" do
    get new_powe_factor_nozzle_h_url
    assert_response :success
  end

  test "should create powe_factor_nozzle_h" do
    assert_difference('PoweFactorNozzleH.count') do
      post powe_factor_nozzle_hs_url, params: { powe_factor_nozzle_h: { lost_mv: @powe_factor_nozzle_h.lost_mv, mide: @powe_factor_nozzle_h.mide, mode_proof: @powe_factor_nozzle_h.mode_proof, number: @powe_factor_nozzle_h.number } }
    end

    assert_redirected_to powe_factor_nozzle_h_url(PoweFactorNozzleH.last)
  end

  test "should show powe_factor_nozzle_h" do
    get powe_factor_nozzle_h_url(@powe_factor_nozzle_h)
    assert_response :success
  end

  test "should get edit" do
    get edit_powe_factor_nozzle_h_url(@powe_factor_nozzle_h)
    assert_response :success
  end

  test "should update powe_factor_nozzle_h" do
    patch powe_factor_nozzle_h_url(@powe_factor_nozzle_h), params: { powe_factor_nozzle_h: { lost_mv: @powe_factor_nozzle_h.lost_mv, mide: @powe_factor_nozzle_h.mide, mode_proof: @powe_factor_nozzle_h.mode_proof, number: @powe_factor_nozzle_h.number } }
    assert_redirected_to powe_factor_nozzle_h_url(@powe_factor_nozzle_h)
  end

  test "should destroy powe_factor_nozzle_h" do
    assert_difference('PoweFactorNozzleH.count', -1) do
      delete powe_factor_nozzle_h_url(@powe_factor_nozzle_h)
    end

    assert_redirected_to powe_factor_nozzle_hs_url
  end
end
