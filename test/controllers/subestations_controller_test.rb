require 'test_helper'

class SubestationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subestation = subestations(:one)
  end

  test "should get index" do
    get subestations_url
    assert_response :success
  end

  test "should get new" do
    get new_subestation_url
    assert_response :success
  end

  test "should create subestation" do
    assert_difference('Subestation.count') do
      post subestations_url, params: { subestation: { abreviation: @subestation.abreviation, identifier: @subestation.identifier, name: @subestation.name } }
    end

    assert_redirected_to subestation_url(Subestation.last)
  end

  test "should show subestation" do
    get subestation_url(@subestation)
    assert_response :success
  end

  test "should get edit" do
    get edit_subestation_url(@subestation)
    assert_response :success
  end

  test "should update subestation" do
    patch subestation_url(@subestation), params: { subestation: { abreviation: @subestation.abreviation, identifier: @subestation.identifier, name: @subestation.name } }
    assert_redirected_to subestation_url(@subestation)
  end

  test "should destroy subestation" do
    assert_difference('Subestation.count', -1) do
      delete subestation_url(@subestation)
    end

    assert_redirected_to subestations_url
  end
end
