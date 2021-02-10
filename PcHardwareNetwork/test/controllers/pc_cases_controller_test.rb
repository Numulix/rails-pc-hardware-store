require "test_helper"

class PcCasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pc_case = pc_cases(:one)
  end

  test "should get index" do
    get pc_cases_url
    assert_response :success
  end

  test "should get new" do
    get new_pc_case_url
    assert_response :success
  end

  test "should create pc_case" do
    assert_difference('PcCase.count') do
      post pc_cases_url, params: { pc_case: { brand: @pc_case.brand, case_type: @pc_case.case_type, color: @pc_case.color, external_bays: @pc_case.external_bays, internal_bays: @pc_case.internal_bays, name: @pc_case.name, power_supply: @pc_case.power_supply, price: @pc_case.price, side_panel_window: @pc_case.side_panel_window } }
    end

    assert_redirected_to pc_case_url(PcCase.last)
  end

  test "should show pc_case" do
    get pc_case_url(@pc_case)
    assert_response :success
  end

  test "should get edit" do
    get edit_pc_case_url(@pc_case)
    assert_response :success
  end

  test "should update pc_case" do
    patch pc_case_url(@pc_case), params: { pc_case: { brand: @pc_case.brand, case_type: @pc_case.case_type, color: @pc_case.color, external_bays: @pc_case.external_bays, internal_bays: @pc_case.internal_bays, name: @pc_case.name, power_supply: @pc_case.power_supply, price: @pc_case.price, side_panel_window: @pc_case.side_panel_window } }
    assert_redirected_to pc_case_url(@pc_case)
  end

  test "should destroy pc_case" do
    assert_difference('PcCase.count', -1) do
      delete pc_case_url(@pc_case)
    end

    assert_redirected_to pc_cases_url
  end
end
