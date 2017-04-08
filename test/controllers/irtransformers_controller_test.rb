require 'test_helper'

class IrtransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @irtransformer = irtransformers(:one)
  end

  test "should get index" do
    get irtransformers_url
    assert_response :success
  end

  test "should get new" do
    get new_irtransformer_url
    assert_response :success
  end

  test "should create irtransformer" do
    assert_difference('Irtransformer.count') do
      post irtransformers_url, params: { irtransformer: { earth: @irtransformer.earth, guard: @irtransformer.guard, line: @irtransformer.line, measure: @irtransformer.measure, number: @irtransformer.number, proof: @irtransformer.proof, resistence: @irtransformer.resistence, time: @irtransformer.time } }
    end

    assert_redirected_to irtransformer_url(Irtransformer.last)
  end

  test "should show irtransformer" do
    get irtransformer_url(@irtransformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_irtransformer_url(@irtransformer)
    assert_response :success
  end

  test "should update irtransformer" do
    patch irtransformer_url(@irtransformer), params: { irtransformer: { earth: @irtransformer.earth, guard: @irtransformer.guard, line: @irtransformer.line, measure: @irtransformer.measure, number: @irtransformer.number, proof: @irtransformer.proof, resistence: @irtransformer.resistence, time: @irtransformer.time } }
    assert_redirected_to irtransformer_url(@irtransformer)
  end

  test "should destroy irtransformer" do
    assert_difference('Irtransformer.count', -1) do
      delete irtransformer_url(@irtransformer)
    end

    assert_redirected_to irtransformers_url
  end
end
