require 'test_helper'

class TrtranformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trtranformer = trtranformers(:one)
  end

  test "should get index" do
    get trtranformers_url
    assert_response :success
  end

  test "should get new" do
    get new_trtranformer_url
    assert_response :success
  end

  test "should create trtranformer" do
    assert_difference('Trtranformer.count') do
      post trtranformers_url, params: { trtranformer: { difference: @trtranformer.difference, nominal_relationship: @trtranformer.nominal_relationship, phase: @trtranformer.phase, take_tap: @trtranformer.take_tap } }
    end

    assert_redirected_to trtranformer_url(Trtranformer.last)
  end

  test "should show trtranformer" do
    get trtranformer_url(@trtranformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_trtranformer_url(@trtranformer)
    assert_response :success
  end

  test "should update trtranformer" do
    patch trtranformer_url(@trtranformer), params: { trtranformer: { difference: @trtranformer.difference, nominal_relationship: @trtranformer.nominal_relationship, phase: @trtranformer.phase, take_tap: @trtranformer.take_tap } }
    assert_redirected_to trtranformer_url(@trtranformer)
  end

  test "should destroy trtranformer" do
    assert_difference('Trtranformer.count', -1) do
      delete trtranformer_url(@trtranformer)
    end

    assert_redirected_to trtranformers_url
  end
end
