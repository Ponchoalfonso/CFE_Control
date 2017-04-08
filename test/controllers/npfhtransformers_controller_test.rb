require 'test_helper'

class NpfhtransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @npfhtransformer = npfhtransformers(:one)
  end

  test "should get index" do
    get npfhtransformers_url
    assert_response :success
  end

  test "should get new" do
    get new_npfhtransformer_url
    assert_response :success
  end

  test "should create npfhtransformer" do
    assert_difference('Npfhtransformer.count') do
      post npfhtransformers_url, params: { npfhtransformer: { lost_mv: @npfhtransformer.lost_mv, mide: @npfhtransformer.mide, number: @npfhtransformer.number, test_mode: @npfhtransformer.test_mode } }
    end

    assert_redirected_to npfhtransformer_url(Npfhtransformer.last)
  end

  test "should show npfhtransformer" do
    get npfhtransformer_url(@npfhtransformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_npfhtransformer_url(@npfhtransformer)
    assert_response :success
  end

  test "should update npfhtransformer" do
    patch npfhtransformer_url(@npfhtransformer), params: { npfhtransformer: { lost_mv: @npfhtransformer.lost_mv, mide: @npfhtransformer.mide, number: @npfhtransformer.number, test_mode: @npfhtransformer.test_mode } }
    assert_redirected_to npfhtransformer_url(@npfhtransformer)
  end

  test "should destroy npfhtransformer" do
    assert_difference('Npfhtransformer.count', -1) do
      delete npfhtransformer_url(@npfhtransformer)
    end

    assert_redirected_to npfhtransformers_url
  end
end
