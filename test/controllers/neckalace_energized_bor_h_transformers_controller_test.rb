require 'test_helper'

class NeckalaceEnergizedBorHTransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @neckalace_energized_bor_h_transformer = neckalace_energized_bor_h_transformers(:one)
  end

  test "should get index" do
    get neckalace_energized_bor_h_transformers_url
    assert_response :success
  end

  test "should get new" do
    get new_neckalace_energized_bor_h_transformer_url
    assert_response :success
  end

  test "should create neckalace_energized_bor_h_transformer" do
    assert_difference('NeckalaceEnergizedBorHTransformer.count') do
      post neckalace_energized_bor_h_transformers_url, params: { neckalace_energized_bor_h_transformer: { lost_mv: @neckalace_energized_bor_h_transformer.lost_mv, mide: @neckalace_energized_bor_h_transformer.mide, mode_proof: @neckalace_energized_bor_h_transformer.mode_proof, number: @neckalace_energized_bor_h_transformer.number } }
    end

    assert_redirected_to neckalace_energized_bor_h_transformer_url(NeckalaceEnergizedBorHTransformer.last)
  end

  test "should show neckalace_energized_bor_h_transformer" do
    get neckalace_energized_bor_h_transformer_url(@neckalace_energized_bor_h_transformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_neckalace_energized_bor_h_transformer_url(@neckalace_energized_bor_h_transformer)
    assert_response :success
  end

  test "should update neckalace_energized_bor_h_transformer" do
    patch neckalace_energized_bor_h_transformer_url(@neckalace_energized_bor_h_transformer), params: { neckalace_energized_bor_h_transformer: { lost_mv: @neckalace_energized_bor_h_transformer.lost_mv, mide: @neckalace_energized_bor_h_transformer.mide, mode_proof: @neckalace_energized_bor_h_transformer.mode_proof, number: @neckalace_energized_bor_h_transformer.number } }
    assert_redirected_to neckalace_energized_bor_h_transformer_url(@neckalace_energized_bor_h_transformer)
  end

  test "should destroy neckalace_energized_bor_h_transformer" do
    assert_difference('NeckalaceEnergizedBorHTransformer.count', -1) do
      delete neckalace_energized_bor_h_transformer_url(@neckalace_energized_bor_h_transformer)
    end

    assert_redirected_to neckalace_energized_bor_h_transformers_url
  end
end
