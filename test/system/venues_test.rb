require "application_system_test_case"

class VenuesTest < ApplicationSystemTestCase
  setup do
    @venue = venues(:one)
  end

  test "visiting the index" do
    visit venues_url
    assert_selector "h1", text: "Venues"
  end

  test "creating a Venue" do
    visit venues_url
    click_on "New Venue"

    fill_in "Address", with: @venue.address
    fill_in "City", with: @venue.city
    fill_in "Comments", with: @venue.comments
    fill_in "Email", with: @venue.email
    fill_in "Kind", with: @venue.kind
    fill_in "Name", with: @venue.name
    fill_in "Phone", with: @venue.phone
    fill_in "Region", with: @venue.region
    fill_in "State", with: @venue.state
    fill_in "Zipcode", with: @venue.zipcode
    click_on "Create Venue"

    assert_text "Venue was successfully created"
    click_on "Back"
  end

  test "updating a Venue" do
    visit venues_url
    click_on "Edit", match: :first

    fill_in "Address", with: @venue.address
    fill_in "City", with: @venue.city
    fill_in "Comments", with: @venue.comments
    fill_in "Email", with: @venue.email
    fill_in "Kind", with: @venue.kind
    fill_in "Name", with: @venue.name
    fill_in "Phone", with: @venue.phone
    fill_in "Region", with: @venue.region
    fill_in "State", with: @venue.state
    fill_in "Zipcode", with: @venue.zipcode
    click_on "Update Venue"

    assert_text "Venue was successfully updated"
    click_on "Back"
  end

  test "destroying a Venue" do
    visit venues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Venue was successfully destroyed"
  end
end
