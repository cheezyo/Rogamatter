require "application_system_test_case"

class CompanyMopsTest < ApplicationSystemTestCase
  setup do
    @company_mop = company_mops(:one)
  end

  test "visiting the index" do
    visit company_mops_url
    assert_selector "h1", text: "Company Mops"
  end

  test "creating a Company mop" do
    visit company_mops_url
    click_on "New Company Mop"

    fill_in "Amount", with: @company_mop.amount
    fill_in "Change", with: @company_mop.change
    fill_in "Change day", with: @company_mop.change_day
    fill_in "Company", with: @company_mop.company_id
    fill_in "Contract price", with: @company_mop.contract_price
    fill_in "Delivery price", with: @company_mop.delivery_price
    fill_in "End date", with: @company_mop.end_date
    fill_in "Location", with: @company_mop.location
    fill_in "Mop", with: @company_mop.mop_id
    fill_in "Start date", with: @company_mop.start_date
    click_on "Create Company mop"

    assert_text "Company mop was successfully created"
    click_on "Back"
  end

  test "updating a Company mop" do
    visit company_mops_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @company_mop.amount
    fill_in "Change", with: @company_mop.change
    fill_in "Change day", with: @company_mop.change_day
    fill_in "Company", with: @company_mop.company_id
    fill_in "Contract price", with: @company_mop.contract_price
    fill_in "Delivery price", with: @company_mop.delivery_price
    fill_in "End date", with: @company_mop.end_date
    fill_in "Location", with: @company_mop.location
    fill_in "Mop", with: @company_mop.mop_id
    fill_in "Start date", with: @company_mop.start_date
    click_on "Update Company mop"

    assert_text "Company mop was successfully updated"
    click_on "Back"
  end

  test "destroying a Company mop" do
    visit company_mops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company mop was successfully destroyed"
  end
end
