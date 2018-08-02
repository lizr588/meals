require "application_system_test_case"

class StoreSectionsTest < ApplicationSystemTestCase
  setup do
    @store_section = store_sections(:one)
  end

  test "visiting the index" do
    visit store_sections_url
    assert_selector "h1", text: "Store Sections"
  end

  test "creating a Store section" do
    visit store_sections_url
    click_on "New Store Section"

    fill_in "Section", with: @store_section.section
    fill_in "Store Map", with: @store_section.store_map_id
    click_on "Create Store section"

    assert_text "Store section was successfully created"
    click_on "Back"
  end

  test "updating a Store section" do
    visit store_sections_url
    click_on "Edit", match: :first

    fill_in "Section", with: @store_section.section
    fill_in "Store Map", with: @store_section.store_map_id
    click_on "Update Store section"

    assert_text "Store section was successfully updated"
    click_on "Back"
  end

  test "destroying a Store section" do
    visit store_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store section was successfully destroyed"
  end
end
