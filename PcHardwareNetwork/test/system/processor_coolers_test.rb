require "application_system_test_case"

class ProcessorCoolersTest < ApplicationSystemTestCase
  setup do
    @processor_cooler = processor_coolers(:one)
  end

  test "visiting the index" do
    visit processor_coolers_url
    assert_selector "h1", text: "Processor Coolers"
  end

  test "creating a Processor cooler" do
    visit processor_coolers_url
    click_on "New Processor Cooler"

    fill_in "Brand", with: @processor_cooler.brand
    fill_in "Color", with: @processor_cooler.color
    fill_in "Fan rpm", with: @processor_cooler.fan_rpm
    fill_in "Name", with: @processor_cooler.name
    fill_in "Noise level", with: @processor_cooler.noise_level
    fill_in "Price", with: @processor_cooler.price
    fill_in "Radiator size", with: @processor_cooler.radiator_size
    click_on "Create Processor cooler"

    assert_text "Processor cooler was successfully created"
    click_on "Back"
  end

  test "updating a Processor cooler" do
    visit processor_coolers_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @processor_cooler.brand
    fill_in "Color", with: @processor_cooler.color
    fill_in "Fan rpm", with: @processor_cooler.fan_rpm
    fill_in "Name", with: @processor_cooler.name
    fill_in "Noise level", with: @processor_cooler.noise_level
    fill_in "Price", with: @processor_cooler.price
    fill_in "Radiator size", with: @processor_cooler.radiator_size
    click_on "Update Processor cooler"

    assert_text "Processor cooler was successfully updated"
    click_on "Back"
  end

  test "destroying a Processor cooler" do
    visit processor_coolers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Processor cooler was successfully destroyed"
  end
end
