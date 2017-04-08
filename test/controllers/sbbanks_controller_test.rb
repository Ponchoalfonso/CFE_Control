require 'test_helper'

class SbbanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sbbank = sbbanks(:one)
  end

  test "should get index" do
    get sbbanks_url
    assert_response :success
  end

  test "should get new" do
    get new_sbbank_url
    assert_response :success
  end

  test "should create sbbank" do
    assert_difference('Sbbank.count') do
      post sbbanks_url, params: { sbbank: { amperage_15min: @sbbank.amperage_15min, amperage_1hr: @sbbank.amperage_1hr, amperage_2hr: @sbbank.amperage_2hr, amperage_30min: @sbbank.amperage_30min, amperage_5min: @sbbank.amperage_5min, cell: @sbbank.cell, voltage_15min: @sbbank.voltage_15min, voltage_1hr: @sbbank.voltage_1hr, voltage_2hr: @sbbank.voltage_2hr, voltage_30min: @sbbank.voltage_30min, voltage_5min: @sbbank.voltage_5min, without_charge: @sbbank.without_charge } }
    end

    assert_redirected_to sbbank_url(Sbbank.last)
  end

  test "should show sbbank" do
    get sbbank_url(@sbbank)
    assert_response :success
  end

  test "should get edit" do
    get edit_sbbank_url(@sbbank)
    assert_response :success
  end

  test "should update sbbank" do
    patch sbbank_url(@sbbank), params: { sbbank: { amperage_15min: @sbbank.amperage_15min, amperage_1hr: @sbbank.amperage_1hr, amperage_2hr: @sbbank.amperage_2hr, amperage_30min: @sbbank.amperage_30min, amperage_5min: @sbbank.amperage_5min, cell: @sbbank.cell, voltage_15min: @sbbank.voltage_15min, voltage_1hr: @sbbank.voltage_1hr, voltage_2hr: @sbbank.voltage_2hr, voltage_30min: @sbbank.voltage_30min, voltage_5min: @sbbank.voltage_5min, without_charge: @sbbank.without_charge } }
    assert_redirected_to sbbank_url(@sbbank)
  end

  test "should destroy sbbank" do
    assert_difference('Sbbank.count', -1) do
      delete sbbank_url(@sbbank)
    end

    assert_redirected_to sbbanks_url
  end
end
