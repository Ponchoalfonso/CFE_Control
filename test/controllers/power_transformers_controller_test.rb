require 'test_helper'

class PowerTransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @power_transformer = power_transformers(:one)
  end

  test "should get index" do
    get power_transformers_url
    assert_response :success
  end

  test "should get new" do
    get new_power_transformer_url
    assert_response :success
  end

  test "should create power_transformer" do
    assert_difference('PowerTransformer.count') do
      post power_transformers_url, params: { power_transformer: { name: @power_transformer.name, number: @power_transformer.number } }
    end

    assert_redirected_to power_transformer_url(PowerTransformer.last)
  end

  test "should show power_transformer" do
    get power_transformer_url(@power_transformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_power_transformer_url(@power_transformer)
    assert_response :success
  end

  test "should update power_transformer" do
    patch power_transformer_url(@power_transformer), params: { power_transformer: { name: @power_transformer.name, number: @power_transformer.number } }
    assert_redirected_to power_transformer_url(@power_transformer)
  end

  test "should destroy power_transformer" do
    assert_difference('PowerTransformer.count', -1) do
      delete power_transformer_url(@power_transformer)
    end

    assert_redirected_to power_transformers_url
  end
end
