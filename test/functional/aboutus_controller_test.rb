require 'test_helper'

class AboutusControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aboutus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aboutu" do
    assert_difference('Aboutu.count') do
      post :create, :aboutu => { }
    end

    assert_redirected_to aboutu_path(assigns(:aboutu))
  end

  test "should show aboutu" do
    get :show, :id => aboutus(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => aboutus(:one).to_param
    assert_response :success
  end

  test "should update aboutu" do
    put :update, :id => aboutus(:one).to_param, :aboutu => { }
    assert_redirected_to aboutu_path(assigns(:aboutu))
  end

  test "should destroy aboutu" do
    assert_difference('Aboutu.count', -1) do
      delete :destroy, :id => aboutus(:one).to_param
    end

    assert_redirected_to aboutus_path
  end
end
