require 'test_helper'

class CompanyMatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_mat = company_mats(:one)
  end

  test "should get index" do
    get company_mats_url
    assert_response :success
  end

  test "should get new" do
    get new_company_mat_url
    assert_response :success
  end

  test "should create company_mat" do
    assert_difference('CompanyMat.count') do
      post company_mats_url, params: { company_mat: { amount: @company_mat.amount, change: @company_mat.change, change_day: @company_mat.change_day, company_id: @company_mat.company_id, end_date: @company_mat.end_date, mat_id: @company_mat.mat_id, start_date: @company_mat.start_date } }
    end

    assert_redirected_to company_mat_url(CompanyMat.last)
  end

  test "should show company_mat" do
    get company_mat_url(@company_mat)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_mat_url(@company_mat)
    assert_response :success
  end

  test "should update company_mat" do
    patch company_mat_url(@company_mat), params: { company_mat: { amount: @company_mat.amount, change: @company_mat.change, change_day: @company_mat.change_day, company_id: @company_mat.company_id, end_date: @company_mat.end_date, mat_id: @company_mat.mat_id, start_date: @company_mat.start_date } }
    assert_redirected_to company_mat_url(@company_mat)
  end

  test "should destroy company_mat" do
    assert_difference('CompanyMat.count', -1) do
      delete company_mat_url(@company_mat)
    end

    assert_redirected_to company_mats_url
  end
end
