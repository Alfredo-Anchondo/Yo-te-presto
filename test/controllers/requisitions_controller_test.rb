require 'test_helper'

class RequisitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requisition = requisitions(:one)
  end

  test "should get index" do
    get requisitions_url
    assert_response :success
  end

  test "should get new" do
    get new_requisition_url
    assert_response :success
  end

  test "should create requisition" do
    assert_difference('Requisition.count') do
      post requisitions_url, params: { requisition: { address_years: @requisition.address_years, bank: @requisition.bank, comment: @requisition.comment, company_name: @requisition.company_name, company_phone_number: @requisition.company_phone_number, company_position: @requisition.company_position, company_years: @requisition.company_years, dependents_number: @requisition.dependents_number, has_car: @requisition.has_car, has_imss: @requisition.has_imss, has_sgmm: @requisition.has_sgmm, income: @requisition.income, marital_status: @requisition.marital_status, payment_terms: @requisition.payment_terms, requested_amount: @requisition.requested_amount } }
    end

    assert_redirected_to requisition_url(Requisition.last)
  end

  test "should show requisition" do
    get requisition_url(@requisition)
    assert_response :success
  end

  test "should get edit" do
    get edit_requisition_url(@requisition)
    assert_response :success
  end

  test "should update requisition" do
    patch requisition_url(@requisition), params: { requisition: { address_years: @requisition.address_years, bank: @requisition.bank, comment: @requisition.comment, company_name: @requisition.company_name, company_phone_number: @requisition.company_phone_number, company_position: @requisition.company_position, company_years: @requisition.company_years, dependents_number: @requisition.dependents_number, has_car: @requisition.has_car, has_imss: @requisition.has_imss, has_sgmm: @requisition.has_sgmm, income: @requisition.income, marital_status: @requisition.marital_status, payment_terms: @requisition.payment_terms, requested_amount: @requisition.requested_amount } }
    assert_redirected_to requisition_url(@requisition)
  end

  test "should destroy requisition" do
    assert_difference('Requisition.count', -1) do
      delete requisition_url(@requisition)
    end

    assert_redirected_to requisitions_url
  end
end
