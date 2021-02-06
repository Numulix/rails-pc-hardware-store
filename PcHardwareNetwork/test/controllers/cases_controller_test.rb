require "test_helper"

class CasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @case = cases(:one)
  end

  test "should get index" do
    get cases_url
    assert_response :success
  end

  test "should get new" do
    get new_case_url
    assert_response :success
  end

  test "should create case" do
    assert_difference('Case.count') do
      post cases_url, params: { case: { brand: @case.brand, color: @case.color, external_bays: @case.external_bays, internal_bays: @case.internal_bays, name: @case.name, power_supply: @case.power_supply, price: @case.price, side_panel_window: @case.side_panel_window, type: @case.type } }
    end

    assert_redirected_to case_url(Case.last)
  end

  test "should show case" do
    get case_url(@case)
    assert_response :success
  end

  test "should get edit" do
    get edit_case_url(@case)
    assert_response :success
  end

  test "should update case" do
    patch case_url(@case), params: { case: { brand: @case.brand, color: @case.color, external_bays: @case.external_bays, internal_bays: @case.internal_bays, name: @case.name, power_supply: @case.power_supply, price: @case.price, side_panel_window: @case.side_panel_window, type: @case.type } }
    assert_redirected_to case_url(@case)
  end

  test "should destroy case" do
    assert_difference('Case.count', -1) do
      delete case_url(@case)
    end

    assert_redirected_to cases_url
  end
end
