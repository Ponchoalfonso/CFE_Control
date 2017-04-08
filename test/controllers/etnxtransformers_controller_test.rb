require 'test_helper'

class EtnxtransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etnxtransformer = etnxtransformers(:one)
  end

  test "should get index" do
    get etnxtransformers_url
    assert_response :success
  end

  test "should get new" do
    get new_etnxtransformer_url
    assert_response :success
  end

  test "should create etnxtransformer" do
    assert_difference('Etnxtransformer.count') do
      post etnxtransformers_url, params: { etnxtransformer: { lost_mv: @etnxtransformer.lost_mv, mide: @etnxtransformer.mide, number: @etnxtransformer.number, test_mode: @etnxtransformer.test_mode } }
    end

    assert_redirected_to etnxtransformer_url(Etnxtransformer.last)
  end

  test "should show etnxtransformer" do
    get etnxtransformer_url(@etnxtransformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_etnxtransformer_url(@etnxtransformer)
    assert_response :success
  end

  test "should update etnxtransformer" do
    patch etnxtransformer_url(@etnxtransformer), params: { etnxtransformer: { lost_mv: @etnxtransformer.lost_mv, mide: @etnxtransformer.mide, number: @etnxtransformer.number, test_mode: @etnxtransformer.test_mode } }
    assert_redirected_to etnxtransformer_url(@etnxtransformer)
  end

  test "should destroy etnxtransformer" do
    assert_difference('Etnxtransformer.count', -1) do
      delete etnxtransformer_url(@etnxtransformer)
    end

    assert_redirected_to etnxtransformers_url
  end
end
