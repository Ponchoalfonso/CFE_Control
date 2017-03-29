require 'test_helper'

class PowerFactorNozzleXTransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @power_factor_nozzle_x_transformer = power_factor_nozzle_x_transformers(:one)
  end

  test "should get index" do
    get power_factor_nozzle_x_transformers_url
    assert_response :success
  end

  test "should get new" do
    get new_power_factor_nozzle_x_transformer_url
    assert_response :success
  end

  test "should create power_factor_nozzle_x_transformer" do
    assert_difference('PowerFactorNozzleXTransformer.count') do
      post power_factor_nozzle_x_transformers_url, params: { power_factor_nozzle_x_transformer: { lost_mv: @power_factor_nozzle_x_transformer.lost_mv, mide: @power_factor_nozzle_x_transformer.mide, number: @power_factor_nozzle_x_transformer.number, test_mode: @power_factor_nozzle_x_transformer.test_mode } }
    end

    assert_redirected_to power_factor_nozzle_x_transformer_url(PowerFactorNozzleXTransformer.last)
  end

  test "should show power_factor_nozzle_x_transformer" do
    get power_factor_nozzle_x_transformer_url(@power_factor_nozzle_x_transformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_power_factor_nozzle_x_transformer_url(@power_factor_nozzle_x_transformer)
    assert_response :success
  end

  test "should update power_factor_nozzle_x_transformer" do
    patch power_factor_nozzle_x_transformer_url(@power_factor_nozzle_x_transformer), params: { power_factor_nozzle_x_transformer: { lost_mv: @power_factor_nozzle_x_transformer.lost_mv, mide: @power_factor_nozzle_x_transformer.mide, number: @power_factor_nozzle_x_transformer.number, test_mode: @power_factor_nozzle_x_transformer.test_mode } }
    assert_redirected_to power_factor_nozzle_x_transformer_url(@power_factor_nozzle_x_transformer)
  end

  test "should destroy power_factor_nozzle_x_transformer" do
    assert_difference('PowerFactorNozzleXTransformer.count', -1) do
      delete power_factor_nozzle_x_transformer_url(@power_factor_nozzle_x_transformer)
    end

    assert_redirected_to power_factor_nozzle_x_transformers_url
  end
end
