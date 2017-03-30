require 'test_helper'

class OwnUseTransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @own_use_transformer = own_use_transformers(:one)
  end

  test "should get index" do
    get own_use_transformers_url
    assert_response :success
  end

  test "should get new" do
    get new_own_use_transformer_url
    assert_response :success
  end

  test "should create own_use_transformer" do
    assert_difference('OwnUseTransformer.count') do
      post own_use_transformers_url, params: { own_use_transformer: { name: @own_use_transformer.name, number: @own_use_transformer.number } }
    end

    assert_redirected_to own_use_transformer_url(OwnUseTransformer.last)
  end

  test "should show own_use_transformer" do
    get own_use_transformer_url(@own_use_transformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_own_use_transformer_url(@own_use_transformer)
    assert_response :success
  end

  test "should update own_use_transformer" do
    patch own_use_transformer_url(@own_use_transformer), params: { own_use_transformer: { name: @own_use_transformer.name, number: @own_use_transformer.number } }
    assert_redirected_to own_use_transformer_url(@own_use_transformer)
  end

  test "should destroy own_use_transformer" do
    assert_difference('OwnUseTransformer.count', -1) do
      delete own_use_transformer_url(@own_use_transformer)
    end

    assert_redirected_to own_use_transformers_url
  end
end
