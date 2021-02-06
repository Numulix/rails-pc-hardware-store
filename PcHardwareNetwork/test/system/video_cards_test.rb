require "application_system_test_case"

class VideoCardsTest < ApplicationSystemTestCase
  setup do
    @video_card = video_cards(:one)
  end

  test "visiting the index" do
    visit video_cards_url
    assert_selector "h1", text: "Video Cards"
  end

  test "creating a Video card" do
    visit video_cards_url
    click_on "New Video Card"

    fill_in "Boost clock", with: @video_card.boost_clock
    fill_in "Brand", with: @video_card.brand
    fill_in "Chipset", with: @video_card.chipset
    fill_in "Color", with: @video_card.color
    fill_in "Core clock", with: @video_card.core_clock
    fill_in "Length", with: @video_card.length
    fill_in "Memory", with: @video_card.memory
    fill_in "Name", with: @video_card.name
    fill_in "Price", with: @video_card.price
    click_on "Create Video card"

    assert_text "Video card was successfully created"
    click_on "Back"
  end

  test "updating a Video card" do
    visit video_cards_url
    click_on "Edit", match: :first

    fill_in "Boost clock", with: @video_card.boost_clock
    fill_in "Brand", with: @video_card.brand
    fill_in "Chipset", with: @video_card.chipset
    fill_in "Color", with: @video_card.color
    fill_in "Core clock", with: @video_card.core_clock
    fill_in "Length", with: @video_card.length
    fill_in "Memory", with: @video_card.memory
    fill_in "Name", with: @video_card.name
    fill_in "Price", with: @video_card.price
    click_on "Update Video card"

    assert_text "Video card was successfully updated"
    click_on "Back"
  end

  test "destroying a Video card" do
    visit video_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Video card was successfully destroyed"
  end
end
