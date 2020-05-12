require "application_system_test_case"

class MopsTest < ApplicationSystemTestCase
  setup do
    @mop = mops(:one)
  end

  test "visiting the index" do
    visit mops_url
    assert_selector "h1", text: "Mops"
  end

  test "creating a Mop" do
    visit mops_url
    click_on "New Mop"

    fill_in "Name", with: @mop.name
    fill_in "Size", with: @mop.size
    click_on "Create Mop"

    assert_text "Mop was successfully created"
    click_on "Back"
  end

  test "updating a Mop" do
    visit mops_url
    click_on "Edit", match: :first

    fill_in "Name", with: @mop.name
    fill_in "Size", with: @mop.size
    click_on "Update Mop"

    assert_text "Mop was successfully updated"
    click_on "Back"
  end

  test "destroying a Mop" do
    visit mops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mop was successfully destroyed"
  end
end
