require 'test_helper'

class NeckalaceEnergizedBorXTransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @neckalace_energized_bor_x_transformer = neckalace_energized_bor_x_transformers(:one)
  end

  test "should get index" do
    get neckalace_energized_bor_x_transformers_url
    assert_response :success
  end

  test "should get new" do
    get new_neckalace_energized_bor_x_transformer_url
    assert_response :success
  end

  test "should create neckalace_energized_bor_x_transformer" do
    assert_difference('NeckalaceEnergizedBorXTransformer.count') do
      post neckalace_energized_bor_x_transformers_url, params: { neckalace_energized_bor_x_transformer: { lost_mv: @neckalace_energized_bor_x_transformer.lost_mv, mide: @neckalace_energized_bor_x_transformer.mide, mode_proof: @neckalace_energized_bor_x_transformer.mode_proof, number: @neckalace_energized_bor_x_transformer.number } }
    end

    assert_redirected_to neckalace_energized_bor_x_transformer_url(NeckalaceEnergizedBorXTransformer.last)
  end

  test "should show neckalace_energized_bor_x_transformer" do
    get neckalace_energized_bor_x_transformer_url(@neckalace_energized_bor_x_transformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_neckalace_energized_bor_x_transformer_url(@neckalace_energized_bor_x_transformer)
    assert_response :success
  end

  test "should update neckalace_energized_bor_x_transformer" do
    patch neckalace_energized_bor_x_transformer_url(@neckalace_energized_bor_x_transformer), params: { neckalace_energized_bor_x_transformer: { lost_mv: @neckalace_energized_bor_x_transformer.lost_mv, mide: @neckalace_energized_bor_x_transformer.mide, mode_proof: @neckalace_energized_bor_x_transformer.mode_proof, number: @neckalace_energized_bor_x_transformer.number } }
    assert_redirected_to neckalace_energized_bor_x_transformer_url(@neckalace_energized_bor_x_transformer)
  end

  test "should destroy neckalace_energized_bor_x_transformer" do
    assert_difference('NeckalaceEnergizedBorXTransformer.count', -1) do
      delete neckalace_energized_bor_x_transformer_url(@neckalace_energized_bor_x_transformer)
    end

    assert_redirected_to neckalace_energized_bor_x_transformers_url
  end
end
