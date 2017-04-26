require 'test_helper'

class PwtransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pwtransformer = pwtransformers(:one)
  end

  test "should get index" do
    get pwtransformers_url
    assert_response :success
  end

  test "should get new" do
    get new_pwtransformer_url
    assert_response :success
  end

  test "should create pwtransformer" do
    assert_difference('Pwtransformer.count') do
      post pwtransformers_url, params: { pwtransformer: { lastupdate: @pwtransformer.lastupdate, name: @pwtransformer.name } }
    end

    assert_redirected_to pwtransformer_url(Pwtransformer.last)
  end

  test "should show pwtransformer" do
    get pwtransformer_url(@pwtransformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_pwtransformer_url(@pwtransformer)
    assert_response :success
  end

  test "should update pwtransformer" do
    patch pwtransformer_url(@pwtransformer), params: { pwtransformer: { lastupdate: @pwtransformer.lastupdate, name: @pwtransformer.name } }
    assert_redirected_to pwtransformer_url(@pwtransformer)
  end

  test "should destroy pwtransformer" do
    assert_difference('Pwtransformer.count', -1) do
      delete pwtransformer_url(@pwtransformer)
    end

    assert_redirected_to pwtransformers_url
  end
end
