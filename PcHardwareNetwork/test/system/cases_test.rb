require "application_system_test_case"

class CasesTest < ApplicationSystemTestCase
  setup do
    @case = cases(:one)
  end

  test "visiting the index" do
    visit cases_url
    assert_selector "h1", text: "Cases"
  end

  test "creating a Case" do
    visit cases_url
    click_on "New Case"

    fill_in "Brand", with: @case.brand
    fill_in "Color", with: @case.color
    fill_in "External bays", with: @case.external_bays
    fill_in "Internal bays", with: @case.internal_bays
    fill_in "Name", with: @case.name
    fill_in "Power supply", with: @case.power_supply
    fill_in "Price", with: @case.price
    fill_in "Side panel window", with: @case.side_panel_window
    fill_in "Type", with: @case.type
    click_on "Create Case"

    assert_text "Case was successfully created"
    click_on "Back"
  end

  test "updating a Case" do
    visit cases_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @case.brand
    fill_in "Color", with: @case.color
    fill_in "External bays", with: @case.external_bays
    fill_in "Internal bays", with: @case.internal_bays
    fill_in "Name", with: @case.name
    fill_in "Power supply", with: @case.power_supply
    fill_in "Price", with: @case.price
    fill_in "Side panel window", with: @case.side_panel_window
    fill_in "Type", with: @case.type
    click_on "Update Case"

    assert_text "Case was successfully updated"
    click_on "Back"
  end

  test "destroying a Case" do
    visit cases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Case was successfully destroyed"
  end
end
