require 'test_helper'

class TransformationRatioTransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transformation_ratio_transformer = transformation_ratio_transformers(:one)
  end

  test "should get index" do
    get transformation_ratio_transformers_url
    assert_response :success
  end

  test "should get new" do
    get new_transformation_ratio_transformer_url
    assert_response :success
  end

  test "should create transformation_ratio_transformer" do
    assert_difference('TransformationRatioTransformer.count') do
      post transformation_ratio_transformers_url, params: { transformation_ratio_transformer: { difference: @transformation_ratio_transformer.difference, nominal_relationship: @transformation_ratio_transformer.nominal_relationship, outlet_tap: @transformation_ratio_transformer.outlet_tap, step_a: @transformation_ratio_transformer.step_a, step_b: @transformation_ratio_transformer.step_b, step_c: @transformation_ratio_transformer.step_c } }
    end

    assert_redirected_to transformation_ratio_transformer_url(TransformationRatioTransformer.last)
  end

  test "should show transformation_ratio_transformer" do
    get transformation_ratio_transformer_url(@transformation_ratio_transformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_transformation_ratio_transformer_url(@transformation_ratio_transformer)
    assert_response :success
  end

  test "should update transformation_ratio_transformer" do
    patch transformation_ratio_transformer_url(@transformation_ratio_transformer), params: { transformation_ratio_transformer: { difference: @transformation_ratio_transformer.difference, nominal_relationship: @transformation_ratio_transformer.nominal_relationship, outlet_tap: @transformation_ratio_transformer.outlet_tap, step_a: @transformation_ratio_transformer.step_a, step_b: @transformation_ratio_transformer.step_b, step_c: @transformation_ratio_transformer.step_c } }
    assert_redirected_to transformation_ratio_transformer_url(@transformation_ratio_transformer)
  end

  test "should destroy transformation_ratio_transformer" do
    assert_difference('TransformationRatioTransformer.count', -1) do
      delete transformation_ratio_transformer_url(@transformation_ratio_transformer)
    end

    assert_redirected_to transformation_ratio_transformers_url
  end
end
