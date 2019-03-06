require "application_system_test_case"

class BandsTest < ApplicationSystemTestCase
  setup do
    @band = bands(:one)
  end

  test "visiting the index" do
    visit bands_url
    assert_selector "h1", text: "Bands"
  end

  test "creating a Band" do
    visit bands_url
    click_on "New Band"

    fill_in "Best track", with: @band.best_track
    fill_in "From year", with: @band.from_year
    fill_in "Image", with: @band.image
    fill_in "Instruments", with: @band.instruments
    fill_in "Kind", with: @band.kind
    fill_in "Name", with: @band.name
    fill_in "Number of shows", with: @band.number_of_shows
    fill_in "Size", with: @band.size
    fill_in "To year", with: @band.to_year
    click_on "Create Band"

    assert_text "Band was successfully created"
    click_on "Back"
  end

  test "updating a Band" do
    visit bands_url
    click_on "Edit", match: :first

    fill_in "Best track", with: @band.best_track
    fill_in "From year", with: @band.from_year
    fill_in "Image", with: @band.image
    fill_in "Instruments", with: @band.instruments
    fill_in "Kind", with: @band.kind
    fill_in "Name", with: @band.name
    fill_in "Number of shows", with: @band.number_of_shows
    fill_in "Size", with: @band.size
    fill_in "To year", with: @band.to_year
    click_on "Update Band"

    assert_text "Band was successfully updated"
    click_on "Back"
  end

  test "destroying a Band" do
    visit bands_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Band was successfully destroyed"
  end
end
