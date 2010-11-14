require 'test_helper'

class DisclaimersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disclaimers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disclaimer" do
    assert_difference('Disclaimer.count') do
      post :create, :disclaimer => { }
    end

    assert_redirected_to disclaimer_path(assigns(:disclaimer))
  end

  test "should show disclaimer" do
    get :show, :id => disclaimers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => disclaimers(:one).to_param
    assert_response :success
  end

  test "should update disclaimer" do
    put :update, :id => disclaimers(:one).to_param, :disclaimer => { }
    assert_redirected_to disclaimer_path(assigns(:disclaimer))
  end

  test "should destroy disclaimer" do
    assert_difference('Disclaimer.count', -1) do
      delete :destroy, :id => disclaimers(:one).to_param
    end

    assert_redirected_to disclaimers_path
  end
end
