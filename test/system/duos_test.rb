require "application_system_test_case"

class DuosTest < ApplicationSystemTestCase
  setup do
    @duo = duos(:one)
  end

  test "visiting the index" do
    visit duos_url
    assert_selector "h1", text: "Duos"
  end

  test "creating a Duo" do
    visit duos_url
    click_on "New Duo"

    fill_in "Dog", with: @duo.dog_id
    fill_in "Handler", with: @duo.handler_id
    click_on "Create Duo"

    assert_text "Duo was successfully created"
    click_on "Back"
  end

  test "updating a Duo" do
    visit duos_url
    click_on "Edit", match: :first

    fill_in "Dog", with: @duo.dog_id
    fill_in "Handler", with: @duo.handler_id
    click_on "Update Duo"

    assert_text "Duo was successfully updated"
    click_on "Back"
  end

  test "destroying a Duo" do
    visit duos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Duo was successfully destroyed"
  end
end
