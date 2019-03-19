require "application_system_test_case"

class ExpandsTest < ApplicationSystemTestCase
  setup do
    @expand = expands(:one)
  end

  test "visiting the index" do
    visit expands_url
    assert_selector "h1", text: "Expands"
  end

  test "creating a Expand" do
    visit expands_url
    click_on "New Expand"

    fill_in "Text", with: @expand.text
    click_on "Create Expand"

    assert_text "Expand was successfully created"
    click_on "Back"
  end

  test "updating a Expand" do
    visit expands_url
    click_on "Edit", match: :first

    fill_in "Text", with: @expand.text
    click_on "Update Expand"

    assert_text "Expand was successfully updated"
    click_on "Back"
  end

  test "destroying a Expand" do
    visit expands_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expand was successfully destroyed"
  end
end
