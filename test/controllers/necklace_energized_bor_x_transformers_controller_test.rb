require 'test_helper'

class NecklaceEnergizedBorXTransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @necklace_energized_bor_x_transformer = necklace_energized_bor_x_transformers(:one)
  end

  test "should get index" do
    get necklace_energized_bor_x_transformers_url
    assert_response :success
  end

  test "should get new" do
    get new_necklace_energized_bor_x_transformer_url
    assert_response :success
  end

  test "should create necklace_energized_bor_x_transformer" do
    assert_difference('NecklaceEnergizedBorXTransformer.count') do
      post necklace_energized_bor_x_transformers_url, params: { necklace_energized_bor_x_transformer: { lost_mv: @necklace_energized_bor_x_transformer.lost_mv, mide: @necklace_energized_bor_x_transformer.mide, number: @necklace_energized_bor_x_transformer.number, test_mode: @necklace_energized_bor_x_transformer.test_mode } }
    end

    assert_redirected_to necklace_energized_bor_x_transformer_url(NecklaceEnergizedBorXTransformer.last)
  end

  test "should show necklace_energized_bor_x_transformer" do
    get necklace_energized_bor_x_transformer_url(@necklace_energized_bor_x_transformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_necklace_energized_bor_x_transformer_url(@necklace_energized_bor_x_transformer)
    assert_response :success
  end

  test "should update necklace_energized_bor_x_transformer" do
    patch necklace_energized_bor_x_transformer_url(@necklace_energized_bor_x_transformer), params: { necklace_energized_bor_x_transformer: { lost_mv: @necklace_energized_bor_x_transformer.lost_mv, mide: @necklace_energized_bor_x_transformer.mide, number: @necklace_energized_bor_x_transformer.number, test_mode: @necklace_energized_bor_x_transformer.test_mode } }
    assert_redirected_to necklace_energized_bor_x_transformer_url(@necklace_energized_bor_x_transformer)
  end

  test "should destroy necklace_energized_bor_x_transformer" do
    assert_difference('NecklaceEnergizedBorXTransformer.count', -1) do
      delete necklace_energized_bor_x_transformer_url(@necklace_energized_bor_x_transformer)
    end

    assert_redirected_to necklace_energized_bor_x_transformers_url
  end
end
