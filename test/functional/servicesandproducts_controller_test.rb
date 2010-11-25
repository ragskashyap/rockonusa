require 'test_helper'

class ServicesandproductsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicesandproducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicesandproduct" do
    assert_difference('Servicesandproduct.count') do
      post :create, :servicesandproduct => { }
    end

    assert_redirected_to servicesandproduct_path(assigns(:servicesandproduct))
  end

  test "should show servicesandproduct" do
    get :show, :id => servicesandproducts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => servicesandproducts(:one).to_param
    assert_response :success
  end

  test "should update servicesandproduct" do
    put :update, :id => servicesandproducts(:one).to_param, :servicesandproduct => { }
    assert_redirected_to servicesandproduct_path(assigns(:servicesandproduct))
  end

  test "should destroy servicesandproduct" do
    assert_difference('Servicesandproduct.count', -1) do
      delete :destroy, :id => servicesandproducts(:one).to_param
    end

    assert_redirected_to servicesandproducts_path
  end
end
