require 'test_helper'

class CruiseTypesControllerTest < ActionController::TestCase
  setup do
    @cruise_type = cruise_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cruise_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cruise_type" do
    assert_difference('CruiseType.count') do
      post :create, cruise_type: @cruise_type.attributes
    end

    assert_redirected_to cruise_type_path(assigns(:cruise_type))
  end

  test "should show cruise_type" do
    get :show, id: @cruise_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cruise_type.to_param
    assert_response :success
  end

  test "should update cruise_type" do
    put :update, id: @cruise_type.to_param, cruise_type: @cruise_type.attributes
    assert_redirected_to cruise_type_path(assigns(:cruise_type))
  end

  test "should destroy cruise_type" do
    assert_difference('CruiseType.count', -1) do
      delete :destroy, id: @cruise_type.to_param
    end

    assert_redirected_to cruise_types_path
  end
end
