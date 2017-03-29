require 'test_helper'

class PowerFactorNozzleHTransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @power_factor_nozzle_h_transformer = power_factor_nozzle_h_transformers(:one)
  end

  test "should get index" do
    get power_factor_nozzle_h_transformers_url
    assert_response :success
  end

  test "should get new" do
    get new_power_factor_nozzle_h_transformer_url
    assert_response :success
  end

  test "should create power_factor_nozzle_h_transformer" do
    assert_difference('PowerFactorNozzleHTransformer.count') do
      post power_factor_nozzle_h_transformers_url, params: { power_factor_nozzle_h_transformer: { lost_mv: @power_factor_nozzle_h_transformer.lost_mv, mide: @power_factor_nozzle_h_transformer.mide, number: @power_factor_nozzle_h_transformer.number, test_mode: @power_factor_nozzle_h_transformer.test_mode } }
    end

    assert_redirected_to power_factor_nozzle_h_transformer_url(PowerFactorNozzleHTransformer.last)
  end

  test "should show power_factor_nozzle_h_transformer" do
    get power_factor_nozzle_h_transformer_url(@power_factor_nozzle_h_transformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_power_factor_nozzle_h_transformer_url(@power_factor_nozzle_h_transformer)
    assert_response :success
  end

  test "should update power_factor_nozzle_h_transformer" do
    patch power_factor_nozzle_h_transformer_url(@power_factor_nozzle_h_transformer), params: { power_factor_nozzle_h_transformer: { lost_mv: @power_factor_nozzle_h_transformer.lost_mv, mide: @power_factor_nozzle_h_transformer.mide, number: @power_factor_nozzle_h_transformer.number, test_mode: @power_factor_nozzle_h_transformer.test_mode } }
    assert_redirected_to power_factor_nozzle_h_transformer_url(@power_factor_nozzle_h_transformer)
  end

  test "should destroy power_factor_nozzle_h_transformer" do
    assert_difference('PowerFactorNozzleHTransformer.count', -1) do
      delete power_factor_nozzle_h_transformer_url(@power_factor_nozzle_h_transformer)
    end

    assert_redirected_to power_factor_nozzle_h_transformers_url
  end
end
