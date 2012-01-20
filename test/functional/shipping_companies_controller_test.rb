require 'test_helper'

class ShippingCompaniesControllerTest < ActionController::TestCase
  setup do
    @shipping_company = shipping_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipping_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipping_company" do
    assert_difference('ShippingCompany.count') do
      post :create, shipping_company: @shipping_company.attributes
    end

    assert_redirected_to shipping_company_path(assigns(:shipping_company))
  end

  test "should show shipping_company" do
    get :show, id: @shipping_company.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shipping_company.to_param
    assert_response :success
  end

  test "should update shipping_company" do
    put :update, id: @shipping_company.to_param, shipping_company: @shipping_company.attributes
    assert_redirected_to shipping_company_path(assigns(:shipping_company))
  end

  test "should destroy shipping_company" do
    assert_difference('ShippingCompany.count', -1) do
      delete :destroy, id: @shipping_company.to_param
    end

    assert_redirected_to shipping_companies_path
  end
end
