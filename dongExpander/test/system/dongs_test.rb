require "application_system_test_case"

class DongsTest < ApplicationSystemTestCase
  setup do
    @dong = dongs(:one)
  end

  test "visiting the index" do
    visit dongs_url
    assert_selector "h1", text: "Dongs"
  end

  test "creating a Dong" do
    visit dongs_url
    click_on "New Dong"

    fill_in "Name", with: @dong.name
    fill_in "Url", with: @dong.url
    click_on "Create Dong"

    assert_text "Dong was successfully created"
    click_on "Back"
  end

  test "updating a Dong" do
    visit dongs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @dong.name
    fill_in "Url", with: @dong.url
    click_on "Update Dong"

    assert_text "Dong was successfully updated"
    click_on "Back"
  end

  test "destroying a Dong" do
    visit dongs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dong was successfully destroyed"
  end
end
