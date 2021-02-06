require "application_system_test_case"

class StoragesTest < ApplicationSystemTestCase
  setup do
    @storage = storages(:one)
  end

  test "visiting the index" do
    visit storages_url
    assert_selector "h1", text: "Storages"
  end

  test "creating a Storage" do
    visit storages_url
    click_on "New Storage"

    fill_in "Brand", with: @storage.brand
    fill_in "Cache", with: @storage.cache
    fill_in "Capacity", with: @storage.capacity
    fill_in "Form factor", with: @storage.form_factor
    fill_in "Interface", with: @storage.interface
    fill_in "Name", with: @storage.name
    fill_in "Price", with: @storage.price
    fill_in "Type", with: @storage.type
    click_on "Create Storage"

    assert_text "Storage was successfully created"
    click_on "Back"
  end

  test "updating a Storage" do
    visit storages_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @storage.brand
    fill_in "Cache", with: @storage.cache
    fill_in "Capacity", with: @storage.capacity
    fill_in "Form factor", with: @storage.form_factor
    fill_in "Interface", with: @storage.interface
    fill_in "Name", with: @storage.name
    fill_in "Price", with: @storage.price
    fill_in "Type", with: @storage.type
    click_on "Update Storage"

    assert_text "Storage was successfully updated"
    click_on "Back"
  end

  test "destroying a Storage" do
    visit storages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Storage was successfully destroyed"
  end
end
