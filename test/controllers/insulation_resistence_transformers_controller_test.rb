require 'test_helper'

class InsulationResistenceTransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insulation_resistence_transformer = insulation_resistence_transformers(:one)
  end

  test "should get index" do
    get insulation_resistence_transformers_url
    assert_response :success
  end

  test "should get new" do
    get new_insulation_resistence_transformer_url
    assert_response :success
  end

  test "should create insulation_resistence_transformer" do
    assert_difference('InsulationResistenceTransformer.count') do
      post insulation_resistence_transformers_url, params: { insulation_resistence_transformer: { earth: @insulation_resistence_transformer.earth, guard: @insulation_resistence_transformer.guard, line: @insulation_resistence_transformer.line, mide: @insulation_resistence_transformer.mide, number: @insulation_resistence_transformer.number, proof: @insulation_resistence_transformer.proof, resistance: @insulation_resistence_transformer.resistance, time: @insulation_resistence_transformer.time } }
    end

    assert_redirected_to insulation_resistence_transformer_url(InsulationResistenceTransformer.last)
  end

  test "should show insulation_resistence_transformer" do
    get insulation_resistence_transformer_url(@insulation_resistence_transformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_insulation_resistence_transformer_url(@insulation_resistence_transformer)
    assert_response :success
  end

  test "should update insulation_resistence_transformer" do
    patch insulation_resistence_transformer_url(@insulation_resistence_transformer), params: { insulation_resistence_transformer: { earth: @insulation_resistence_transformer.earth, guard: @insulation_resistence_transformer.guard, line: @insulation_resistence_transformer.line, mide: @insulation_resistence_transformer.mide, number: @insulation_resistence_transformer.number, proof: @insulation_resistence_transformer.proof, resistance: @insulation_resistence_transformer.resistance, time: @insulation_resistence_transformer.time } }
    assert_redirected_to insulation_resistence_transformer_url(@insulation_resistence_transformer)
  end

  test "should destroy insulation_resistence_transformer" do
    assert_difference('InsulationResistenceTransformer.count', -1) do
      delete insulation_resistence_transformer_url(@insulation_resistence_transformer)
    end

    assert_redirected_to insulation_resistence_transformers_url
  end
end
