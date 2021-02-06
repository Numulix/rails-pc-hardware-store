require "application_system_test_case"

class MotherboardsTest < ApplicationSystemTestCase
  setup do
    @motherboard = motherboards(:one)
  end

  test "visiting the index" do
    visit motherboards_url
    assert_selector "h1", text: "Motherboards"
  end

  test "creating a Motherboard" do
    visit motherboards_url
    click_on "New Motherboard"

    fill_in "Brand", with: @motherboard.brand
    fill_in "Color", with: @motherboard.color
    fill_in "Form factor", with: @motherboard.form_factor
    fill_in "Memory max", with: @motherboard.memory_max
    fill_in "Memory slots", with: @motherboard.memory_slots
    fill_in "Name", with: @motherboard.name
    fill_in "Price", with: @motherboard.price
    fill_in "Socket", with: @motherboard.socket
    click_on "Create Motherboard"

    assert_text "Motherboard was successfully created"
    click_on "Back"
  end

  test "updating a Motherboard" do
    visit motherboards_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @motherboard.brand
    fill_in "Color", with: @motherboard.color
    fill_in "Form factor", with: @motherboard.form_factor
    fill_in "Memory max", with: @motherboard.memory_max
    fill_in "Memory slots", with: @motherboard.memory_slots
    fill_in "Name", with: @motherboard.name
    fill_in "Price", with: @motherboard.price
    fill_in "Socket", with: @motherboard.socket
    click_on "Update Motherboard"

    assert_text "Motherboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Motherboard" do
    visit motherboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Motherboard was successfully destroyed"
  end
end
