require "application_system_test_case"

class ShoutoutsTest < ApplicationSystemTestCase
  setup do
    @shoutout = shoutouts(:one)
  end

  test "visiting the index" do
    visit shoutouts_url
    assert_selector "h1", text: "Shoutouts"
  end

  test "should create shoutout" do
    visit shoutouts_url
    click_on "New shoutout"

    fill_in "Body", with: @shoutout.body
    fill_in "Name", with: @shoutout.name
    fill_in "Usrname", with: @shoutout.usrname
    click_on "Create Shoutout"

    assert_text "Shoutout was successfully created"
    click_on "Back"
  end

  test "should update Shoutout" do
    visit shoutout_url(@shoutout)
    click_on "Edit this shoutout", match: :first

    fill_in "Body", with: @shoutout.body
    fill_in "Name", with: @shoutout.name
    fill_in "Usrname", with: @shoutout.usrname
    click_on "Update Shoutout"

    assert_text "Shoutout was successfully updated"
    click_on "Back"
  end

  test "should destroy Shoutout" do
    visit shoutout_url(@shoutout)
    click_on "Destroy this shoutout", match: :first

    assert_text "Shoutout was successfully destroyed"
  end
end
