require 'test_helper'

class BtbanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @btbank = btbanks(:one)
  end

  test "should get index" do
    get btbanks_url
    assert_response :success
  end

  test "should get new" do
    get new_btbank_url
    assert_response :success
  end

  test "should create btbank" do
    assert_difference('Btbank.count') do
      post btbanks_url, params: { btbank: { lastupdate: @btbank.lastupdate, name: @btbank.name } }
    end

    assert_redirected_to btbank_url(Btbank.last)
  end

  test "should show btbank" do
    get btbank_url(@btbank)
    assert_response :success
  end

  test "should get edit" do
    get edit_btbank_url(@btbank)
    assert_response :success
  end

  test "should update btbank" do
    patch btbank_url(@btbank), params: { btbank: { lastupdate: @btbank.lastupdate, name: @btbank.name } }
    assert_redirected_to btbank_url(@btbank)
  end

  test "should destroy btbank" do
    assert_difference('Btbank.count', -1) do
      delete btbank_url(@btbank)
    end

    assert_redirected_to btbanks_url
  end
end
