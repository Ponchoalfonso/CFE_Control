require 'test_helper'

class TransformationRatioTransfromersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transformation_ratio_transfromer = transformation_ratio_transfromers(:one)
  end

  test "should get index" do
    get transformation_ratio_transfromers_url
    assert_response :success
  end

  test "should get new" do
    get new_transformation_ratio_transfromer_url
    assert_response :success
  end

  test "should create transformation_ratio_transfromer" do
    assert_difference('TransformationRatioTransfromer.count') do
      post transformation_ratio_transfromers_url, params: { transformation_ratio_transfromer: { difference: @transformation_ratio_transfromer.difference, outlet: @transformation_ratio_transfromer.outlet, relationship: @transformation_ratio_transfromer.relationship, step_a: @transformation_ratio_transfromer.step_a, step_b: @transformation_ratio_transfromer.step_b, step_c: @transformation_ratio_transfromer.step_c } }
    end

    assert_redirected_to transformation_ratio_transfromer_url(TransformationRatioTransfromer.last)
  end

  test "should show transformation_ratio_transfromer" do
    get transformation_ratio_transfromer_url(@transformation_ratio_transfromer)
    assert_response :success
  end

  test "should get edit" do
    get edit_transformation_ratio_transfromer_url(@transformation_ratio_transfromer)
    assert_response :success
  end

  test "should update transformation_ratio_transfromer" do
    patch transformation_ratio_transfromer_url(@transformation_ratio_transfromer), params: { transformation_ratio_transfromer: { difference: @transformation_ratio_transfromer.difference, outlet: @transformation_ratio_transfromer.outlet, relationship: @transformation_ratio_transfromer.relationship, step_a: @transformation_ratio_transfromer.step_a, step_b: @transformation_ratio_transfromer.step_b, step_c: @transformation_ratio_transfromer.step_c } }
    assert_redirected_to transformation_ratio_transfromer_url(@transformation_ratio_transfromer)
  end

  test "should destroy transformation_ratio_transfromer" do
    assert_difference('TransformationRatioTransfromer.count', -1) do
      delete transformation_ratio_transfromer_url(@transformation_ratio_transfromer)
    end

    assert_redirected_to transformation_ratio_transfromers_url
  end
end
