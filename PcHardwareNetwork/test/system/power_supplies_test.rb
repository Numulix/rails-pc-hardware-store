require "application_system_test_case"

class PowerSuppliesTest < ApplicationSystemTestCase
  setup do
    @power_supply = power_supplies(:one)
  end

  test "visiting the index" do
    visit power_supplies_url
    assert_selector "h1", text: "Power Supplies"
  end

  test "creating a Power supply" do
    visit power_supplies_url
    click_on "New Power Supply"

    fill_in "Brand", with: @power_supply.brand
    fill_in "Color", with: @power_supply.color
    fill_in "Efficiency rating", with: @power_supply.efficiency_rating
    fill_in "Form factor", with: @power_supply.form_factor
    fill_in "Modular", with: @power_supply.modular
    fill_in "Name", with: @power_supply.name
    fill_in "Price", with: @power_supply.price
    fill_in "Wattage", with: @power_supply.wattage
    click_on "Create Power supply"

    assert_text "Power supply was successfully created"
    click_on "Back"
  end

  test "updating a Power supply" do
    visit power_supplies_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @power_supply.brand
    fill_in "Color", with: @power_supply.color
    fill_in "Efficiency rating", with: @power_supply.efficiency_rating
    fill_in "Form factor", with: @power_supply.form_factor
    fill_in "Modular", with: @power_supply.modular
    fill_in "Name", with: @power_supply.name
    fill_in "Price", with: @power_supply.price
    fill_in "Wattage", with: @power_supply.wattage
    click_on "Update Power supply"

    assert_text "Power supply was successfully updated"
    click_on "Back"
  end

  test "destroying a Power supply" do
    visit power_supplies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Power supply was successfully destroyed"
  end
end
