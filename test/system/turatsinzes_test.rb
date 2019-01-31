require "application_system_test_case"

class TuratsinzesTest < ApplicationSystemTestCase
  setup do
    @turatsinze = turatsinzes(:one)
  end

  test "visiting the index" do
    visit turatsinzes_url
    assert_selector "h1", text: "Turatsinzes"
  end

  test "creating a Turatsinze" do
    visit turatsinzes_url
    click_on "New Turatsinze"

    fill_in "Firstname", with: @turatsinze.firstname
    fill_in "Lastname", with: @turatsinze.lastname
    click_on "Create Turatsinze"

    assert_text "Turatsinze was successfully created"
    click_on "Back"
  end

  test "updating a Turatsinze" do
    visit turatsinzes_url
    click_on "Edit", match: :first

    fill_in "Firstname", with: @turatsinze.firstname
    fill_in "Lastname", with: @turatsinze.lastname
    click_on "Update Turatsinze"

    assert_text "Turatsinze was successfully updated"
    click_on "Back"
  end

  test "destroying a Turatsinze" do
    visit turatsinzes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Turatsinze was successfully destroyed"
  end
end
