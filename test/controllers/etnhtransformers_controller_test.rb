require 'test_helper'

class EtnhtransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etnhtransformer = etnhtransformers(:one)
  end

  test "should get index" do
    get etnhtransformers_url
    assert_response :success
  end

  test "should get new" do
    get new_etnhtransformer_url
    assert_response :success
  end

  test "should create etnhtransformer" do
    assert_difference('Etnhtransformer.count') do
      post etnhtransformers_url, params: { etnhtransformer: { lost_mv: @etnhtransformer.lost_mv, mide: @etnhtransformer.mide, number: @etnhtransformer.number, test_mode: @etnhtransformer.test_mode } }
    end

    assert_redirected_to etnhtransformer_url(Etnhtransformer.last)
  end

  test "should show etnhtransformer" do
    get etnhtransformer_url(@etnhtransformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_etnhtransformer_url(@etnhtransformer)
    assert_response :success
  end

  test "should update etnhtransformer" do
    patch etnhtransformer_url(@etnhtransformer), params: { etnhtransformer: { lost_mv: @etnhtransformer.lost_mv, mide: @etnhtransformer.mide, number: @etnhtransformer.number, test_mode: @etnhtransformer.test_mode } }
    assert_redirected_to etnhtransformer_url(@etnhtransformer)
  end

  test "should destroy etnhtransformer" do
    assert_difference('Etnhtransformer.count', -1) do
      delete etnhtransformer_url(@etnhtransformer)
    end

    assert_redirected_to etnhtransformers_url
  end
end
