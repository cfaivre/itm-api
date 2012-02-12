require 'test_helper'

class ShippingCompanyTopOffersControllerTest < ActionController::TestCase
  setup do
    @shipping_company_top_offer = shipping_company_top_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipping_company_top_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipping_company_top_offer" do
    assert_difference('ShippingCompanyTopOffer.count') do
      post :create, shipping_company_top_offer: @shipping_company_top_offer.attributes
    end

    assert_redirected_to shipping_company_top_offer_path(assigns(:shipping_company_top_offer))
  end

  test "should show shipping_company_top_offer" do
    get :show, id: @shipping_company_top_offer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shipping_company_top_offer.to_param
    assert_response :success
  end

  test "should update shipping_company_top_offer" do
    put :update, id: @shipping_company_top_offer.to_param, shipping_company_top_offer: @shipping_company_top_offer.attributes
    assert_redirected_to shipping_company_top_offer_path(assigns(:shipping_company_top_offer))
  end

  test "should destroy shipping_company_top_offer" do
    assert_difference('ShippingCompanyTopOffer.count', -1) do
      delete :destroy, id: @shipping_company_top_offer.to_param
    end

    assert_redirected_to shipping_company_top_offers_path
  end
end
