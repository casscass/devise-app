require "application_system_test_case"

class LolliesTest < ApplicationSystemTestCase
  setup do
    @lolly = lollies(:one)
  end

  test "visiting the index" do
    visit lollies_url
    assert_selector "h1", text: "Lollies"
  end

  test "creating a Lolly" do
    visit lollies_url
    click_on "New Lolly"

    fill_in "Description", with: @lolly.description
    fill_in "Name", with: @lolly.name
    fill_in "Price", with: @lolly.price
    click_on "Create Lolly"

    assert_text "Lolly was successfully created"
    click_on "Back"
  end

  test "updating a Lolly" do
    visit lollies_url
    click_on "Edit", match: :first

    fill_in "Description", with: @lolly.description
    fill_in "Name", with: @lolly.name
    fill_in "Price", with: @lolly.price
    click_on "Update Lolly"

    assert_text "Lolly was successfully updated"
    click_on "Back"
  end

  test "destroying a Lolly" do
    visit lollies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lolly was successfully destroyed"
  end
end
