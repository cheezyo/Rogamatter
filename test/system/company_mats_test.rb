require "application_system_test_case"

class CompanyMatsTest < ApplicationSystemTestCase
  setup do
    @company_mat = company_mats(:one)
  end

  test "visiting the index" do
    visit company_mats_url
    assert_selector "h1", text: "Company Mats"
  end

  test "creating a Company mat" do
    visit company_mats_url
    click_on "New Company Mat"

    fill_in "Amount", with: @company_mat.amount
    fill_in "Change", with: @company_mat.change
    fill_in "Change day", with: @company_mat.change_day
    fill_in "Company", with: @company_mat.company_id
    fill_in "End date", with: @company_mat.end_date
    fill_in "Mat", with: @company_mat.mat_id
    fill_in "Start date", with: @company_mat.start_date
    click_on "Create Company mat"

    assert_text "Company mat was successfully created"
    click_on "Back"
  end

  test "updating a Company mat" do
    visit company_mats_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @company_mat.amount
    fill_in "Change", with: @company_mat.change
    fill_in "Change day", with: @company_mat.change_day
    fill_in "Company", with: @company_mat.company_id
    fill_in "End date", with: @company_mat.end_date
    fill_in "Mat", with: @company_mat.mat_id
    fill_in "Start date", with: @company_mat.start_date
    click_on "Update Company mat"

    assert_text "Company mat was successfully updated"
    click_on "Back"
  end

  test "destroying a Company mat" do
    visit company_mats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company mat was successfully destroyed"
  end
end
