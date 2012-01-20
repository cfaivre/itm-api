require 'test_helper'

class ShipTypesControllerTest < ActionController::TestCase
  setup do
    @ship_type = ship_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ship_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ship_type" do
    assert_difference('ShipType.count') do
      post :create, ship_type: @ship_type.attributes
    end

    assert_redirected_to ship_type_path(assigns(:ship_type))
  end

  test "should show ship_type" do
    get :show, id: @ship_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ship_type.to_param
    assert_response :success
  end

  test "should update ship_type" do
    put :update, id: @ship_type.to_param, ship_type: @ship_type.attributes
    assert_redirected_to ship_type_path(assigns(:ship_type))
  end

  test "should destroy ship_type" do
    assert_difference('ShipType.count', -1) do
      delete :destroy, id: @ship_type.to_param
    end

    assert_redirected_to ship_types_path
  end
end
