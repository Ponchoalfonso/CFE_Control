require 'test_helper'

class InsulationResistanceTransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insulation_resistance_transformer = insulation_resistance_transformers(:one)
  end

  test "should get index" do
    get insulation_resistance_transformers_url
    assert_response :success
  end

  test "should get new" do
    get new_insulation_resistance_transformer_url
    assert_response :success
  end

  test "should create insulation_resistance_transformer" do
    assert_difference('InsulationResistanceTransformer.count') do
      post insulation_resistance_transformers_url, params: { insulation_resistance_transformer: { earth: @insulation_resistance_transformer.earth, guard: @insulation_resistance_transformer.guard, line: @insulation_resistance_transformer.line, mide: @insulation_resistance_transformer.mide, number: @insulation_resistance_transformer.number, proof: @insulation_resistance_transformer.proof, resistance: @insulation_resistance_transformer.resistance, weather: @insulation_resistance_transformer.weather } }
    end

    assert_redirected_to insulation_resistance_transformer_url(InsulationResistanceTransformer.last)
  end

  test "should show insulation_resistance_transformer" do
    get insulation_resistance_transformer_url(@insulation_resistance_transformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_insulation_resistance_transformer_url(@insulation_resistance_transformer)
    assert_response :success
  end

  test "should update insulation_resistance_transformer" do
    patch insulation_resistance_transformer_url(@insulation_resistance_transformer), params: { insulation_resistance_transformer: { earth: @insulation_resistance_transformer.earth, guard: @insulation_resistance_transformer.guard, line: @insulation_resistance_transformer.line, mide: @insulation_resistance_transformer.mide, number: @insulation_resistance_transformer.number, proof: @insulation_resistance_transformer.proof, resistance: @insulation_resistance_transformer.resistance, weather: @insulation_resistance_transformer.weather } }
    assert_redirected_to insulation_resistance_transformer_url(@insulation_resistance_transformer)
  end

  test "should destroy insulation_resistance_transformer" do
    assert_difference('InsulationResistanceTransformer.count', -1) do
      delete insulation_resistance_transformer_url(@insulation_resistance_transformer)
    end

    assert_redirected_to insulation_resistance_transformers_url
  end
end
