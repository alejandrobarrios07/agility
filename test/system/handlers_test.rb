require "application_system_test_case"

class HandlersTest < ApplicationSystemTestCase
  setup do
    @handler = handlers(:one)
  end

  test "visiting the index" do
    visit handlers_url
    assert_selector "h1", text: "Handlers"
  end

  test "creating a Handler" do
    visit handlers_url
    click_on "New Handler"

    fill_in "Country", with: @handler.country
    fill_in "Name", with: @handler.name
    fill_in "Number", with: @handler.number
    click_on "Create Handler"

    assert_text "Handler was successfully created"
    click_on "Back"
  end

  test "updating a Handler" do
    visit handlers_url
    click_on "Edit", match: :first

    fill_in "Country", with: @handler.country
    fill_in "Name", with: @handler.name
    fill_in "Number", with: @handler.number
    click_on "Update Handler"

    assert_text "Handler was successfully updated"
    click_on "Back"
  end

  test "destroying a Handler" do
    visit handlers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Handler was successfully destroyed"
  end
end
