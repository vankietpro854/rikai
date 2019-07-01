require "application_system_test_case"

class CoursTest < ApplicationSystemTestCase
  setup do
    @cour = cours(:one)
  end

  test "visiting the index" do
    visit cours_url
    assert_selector "h1", text: "Cours"
  end

  test "creating a Cour" do
    visit cours_url
    click_on "New Cour"

    fill_in "Name", with: @cour.name
    click_on "Create Cour"

    assert_text "Cour was successfully created"
    click_on "Back"
  end

  test "updating a Cour" do
    visit cours_url
    click_on "Edit", match: :first

    fill_in "Name", with: @cour.name
    click_on "Update Cour"

    assert_text "Cour was successfully updated"
    click_on "Back"
  end

  test "destroying a Cour" do
    visit cours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cour was successfully destroyed"
  end
end
