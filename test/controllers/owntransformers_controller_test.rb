require 'test_helper'

class OwntransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @owntransformer = owntransformers(:one)
  end

  test "should get index" do
    get owntransformers_url
    assert_response :success
  end

  test "should get new" do
    get new_owntransformer_url
    assert_response :success
  end

  test "should create owntransformer" do
    assert_difference('Owntransformer.count') do
      post owntransformers_url, params: { owntransformer: { lastupdate: @owntransformer.lastupdate, name: @owntransformer.name } }
    end

    assert_redirected_to owntransformer_url(Owntransformer.last)
  end

  test "should show owntransformer" do
    get owntransformer_url(@owntransformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_owntransformer_url(@owntransformer)
    assert_response :success
  end

  test "should update owntransformer" do
    patch owntransformer_url(@owntransformer), params: { owntransformer: { lastupdate: @owntransformer.lastupdate, name: @owntransformer.name } }
    assert_redirected_to owntransformer_url(@owntransformer)
  end

  test "should destroy owntransformer" do
    assert_difference('Owntransformer.count', -1) do
      delete owntransformer_url(@owntransformer)
    end

    assert_redirected_to owntransformers_url
  end
end
