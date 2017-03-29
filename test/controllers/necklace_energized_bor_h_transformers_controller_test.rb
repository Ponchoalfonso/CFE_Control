require 'test_helper'

class NecklaceEnergizedBorHTransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @necklace_energized_bor_h_transformer = necklace_energized_bor_h_transformers(:one)
  end

  test "should get index" do
    get necklace_energized_bor_h_transformers_url
    assert_response :success
  end

  test "should get new" do
    get new_necklace_energized_bor_h_transformer_url
    assert_response :success
  end

  test "should create necklace_energized_bor_h_transformer" do
    assert_difference('NecklaceEnergizedBorHTransformer.count') do
      post necklace_energized_bor_h_transformers_url, params: { necklace_energized_bor_h_transformer: { lost_mv: @necklace_energized_bor_h_transformer.lost_mv, mide: @necklace_energized_bor_h_transformer.mide, number: @necklace_energized_bor_h_transformer.number, test_mode: @necklace_energized_bor_h_transformer.test_mode } }
    end

    assert_redirected_to necklace_energized_bor_h_transformer_url(NecklaceEnergizedBorHTransformer.last)
  end

  test "should show necklace_energized_bor_h_transformer" do
    get necklace_energized_bor_h_transformer_url(@necklace_energized_bor_h_transformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_necklace_energized_bor_h_transformer_url(@necklace_energized_bor_h_transformer)
    assert_response :success
  end

  test "should update necklace_energized_bor_h_transformer" do
    patch necklace_energized_bor_h_transformer_url(@necklace_energized_bor_h_transformer), params: { necklace_energized_bor_h_transformer: { lost_mv: @necklace_energized_bor_h_transformer.lost_mv, mide: @necklace_energized_bor_h_transformer.mide, number: @necklace_energized_bor_h_transformer.number, test_mode: @necklace_energized_bor_h_transformer.test_mode } }
    assert_redirected_to necklace_energized_bor_h_transformer_url(@necklace_energized_bor_h_transformer)
  end

  test "should destroy necklace_energized_bor_h_transformer" do
    assert_difference('NecklaceEnergizedBorHTransformer.count', -1) do
      delete necklace_energized_bor_h_transformer_url(@necklace_energized_bor_h_transformer)
    end

    assert_redirected_to necklace_energized_bor_h_transformers_url
  end
end
