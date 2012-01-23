require 'test_helper'

class TopOffersControllerTest < ActionController::TestCase
  setup do
    @top_offer = top_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:top_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create top_offer" do
    assert_difference('TopOffer.count') do
      post :create, top_offer: @top_offer.attributes
    end

    assert_redirected_to top_offer_path(assigns(:top_offer))
  end

  test "should show top_offer" do
    get :show, id: @top_offer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @top_offer.to_param
    assert_response :success
  end

  test "should update top_offer" do
    put :update, id: @top_offer.to_param, top_offer: @top_offer.attributes
    assert_redirected_to top_offer_path(assigns(:top_offer))
  end

  test "should destroy top_offer" do
    assert_difference('TopOffer.count', -1) do
      delete :destroy, id: @top_offer.to_param
    end

    assert_redirected_to top_offers_path
  end
end
