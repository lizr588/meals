require "application_system_test_case"

class StoreMapsTest < ApplicationSystemTestCase
  setup do
    @store_map = store_maps(:one)
  end

  test "visiting the index" do
    visit store_maps_url
    assert_selector "h1", text: "Store Maps"
  end

  test "creating a Store map" do
    visit store_maps_url
    click_on "New Store Map"

    fill_in "Aisl", with: @store_map.aisl
    fill_in "Aisle Number", with: @store_map.aisle_number
    click_on "Create Store map"

    assert_text "Store map was successfully created"
    click_on "Back"
  end

  test "updating a Store map" do
    visit store_maps_url
    click_on "Edit", match: :first

    fill_in "Aisl", with: @store_map.aisl
    fill_in "Aisle Number", with: @store_map.aisle_number
    click_on "Update Store map"

    assert_text "Store map was successfully updated"
    click_on "Back"
  end

  test "destroying a Store map" do
    visit store_maps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store map was successfully destroyed"
  end
end
