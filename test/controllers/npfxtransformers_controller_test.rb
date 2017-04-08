require 'test_helper'

class NpfxtransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @npfxtransformer = npfxtransformers(:one)
  end

  test "should get index" do
    get npfxtransformers_url
    assert_response :success
  end

  test "should get new" do
    get new_npfxtransformer_url
    assert_response :success
  end

  test "should create npfxtransformer" do
    assert_difference('Npfxtransformer.count') do
      post npfxtransformers_url, params: { npfxtransformer: { lost_mv: @npfxtransformer.lost_mv, mide: @npfxtransformer.mide, number: @npfxtransformer.number, test_mode: @npfxtransformer.test_mode } }
    end

    assert_redirected_to npfxtransformer_url(Npfxtransformer.last)
  end

  test "should show npfxtransformer" do
    get npfxtransformer_url(@npfxtransformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_npfxtransformer_url(@npfxtransformer)
    assert_response :success
  end

  test "should update npfxtransformer" do
    patch npfxtransformer_url(@npfxtransformer), params: { npfxtransformer: { lost_mv: @npfxtransformer.lost_mv, mide: @npfxtransformer.mide, number: @npfxtransformer.number, test_mode: @npfxtransformer.test_mode } }
    assert_redirected_to npfxtransformer_url(@npfxtransformer)
  end

  test "should destroy npfxtransformer" do
    assert_difference('Npfxtransformer.count', -1) do
      delete npfxtransformer_url(@npfxtransformer)
    end

    assert_redirected_to npfxtransformers_url
  end
end
