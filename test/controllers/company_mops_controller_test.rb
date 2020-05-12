require 'test_helper'

class CompanyMopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_mop = company_mops(:one)
  end

  test "should get index" do
    get company_mops_url
    assert_response :success
  end

  test "should get new" do
    get new_company_mop_url
    assert_response :success
  end

  test "should create company_mop" do
    assert_difference('CompanyMop.count') do
      post company_mops_url, params: { company_mop: { amount: @company_mop.amount, change: @company_mop.change, change_day: @company_mop.change_day, company_id: @company_mop.company_id, contract_price: @company_mop.contract_price, delivery_price: @company_mop.delivery_price, end_date: @company_mop.end_date, location: @company_mop.location, mop_id: @company_mop.mop_id, start_date: @company_mop.start_date } }
    end

    assert_redirected_to company_mop_url(CompanyMop.last)
  end

  test "should show company_mop" do
    get company_mop_url(@company_mop)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_mop_url(@company_mop)
    assert_response :success
  end

  test "should update company_mop" do
    patch company_mop_url(@company_mop), params: { company_mop: { amount: @company_mop.amount, change: @company_mop.change, change_day: @company_mop.change_day, company_id: @company_mop.company_id, contract_price: @company_mop.contract_price, delivery_price: @company_mop.delivery_price, end_date: @company_mop.end_date, location: @company_mop.location, mop_id: @company_mop.mop_id, start_date: @company_mop.start_date } }
    assert_redirected_to company_mop_url(@company_mop)
  end

  test "should destroy company_mop" do
    assert_difference('CompanyMop.count', -1) do
      delete company_mop_url(@company_mop)
    end

    assert_redirected_to company_mops_url
  end
end
