require "application_system_test_case"

class PcCasesTest < ApplicationSystemTestCase
  setup do
    @pc_case = pc_cases(:one)
  end

  test "visiting the index" do
    visit pc_cases_url
    assert_selector "h1", text: "Pc Cases"
  end

  test "creating a Pc case" do
    visit pc_cases_url
    click_on "New Pc Case"

    fill_in "Brand", with: @pc_case.brand
    fill_in "Case type", with: @pc_case.case_type
    fill_in "Color", with: @pc_case.color
    fill_in "External bays", with: @pc_case.external_bays
    fill_in "Internal bays", with: @pc_case.internal_bays
    fill_in "Name", with: @pc_case.name
    fill_in "Power supply", with: @pc_case.power_supply
    fill_in "Price", with: @pc_case.price
    fill_in "Side panel window", with: @pc_case.side_panel_window
    click_on "Create Pc case"

    assert_text "Pc case was successfully created"
    click_on "Back"
  end

  test "updating a Pc case" do
    visit pc_cases_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @pc_case.brand
    fill_in "Case type", with: @pc_case.case_type
    fill_in "Color", with: @pc_case.color
    fill_in "External bays", with: @pc_case.external_bays
    fill_in "Internal bays", with: @pc_case.internal_bays
    fill_in "Name", with: @pc_case.name
    fill_in "Power supply", with: @pc_case.power_supply
    fill_in "Price", with: @pc_case.price
    fill_in "Side panel window", with: @pc_case.side_panel_window
    click_on "Update Pc case"

    assert_text "Pc case was successfully updated"
    click_on "Back"
  end

  test "destroying a Pc case" do
    visit pc_cases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pc case was successfully destroyed"
  end
end
