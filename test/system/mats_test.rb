require "application_system_test_case"

class MatsTest < ApplicationSystemTestCase
  setup do
    @mat = mats(:one)
  end

  test "visiting the index" do
    visit mats_url
    assert_selector "h1", text: "Mats"
  end

  test "creating a Mat" do
    visit mats_url
    click_on "New Mat"

    fill_in "Comment", with: @mat.comment
    fill_in "Mat size", with: @mat.mat_size
    fill_in "Mat type", with: @mat.mat_type
    click_on "Create Mat"

    assert_text "Mat was successfully created"
    click_on "Back"
  end

  test "updating a Mat" do
    visit mats_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @mat.comment
    fill_in "Mat size", with: @mat.mat_size
    fill_in "Mat type", with: @mat.mat_type
    click_on "Update Mat"

    assert_text "Mat was successfully updated"
    click_on "Back"
  end

  test "destroying a Mat" do
    visit mats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mat was successfully destroyed"
  end
end
