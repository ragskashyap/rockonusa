require 'test_helper'

class PastprojectsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pastprojects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pastproject" do
    assert_difference('Pastproject.count') do
      post :create, :pastproject => { }
    end

    assert_redirected_to pastproject_path(assigns(:pastproject))
  end

  test "should show pastproject" do
    get :show, :id => pastprojects(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pastprojects(:one).to_param
    assert_response :success
  end

  test "should update pastproject" do
    put :update, :id => pastprojects(:one).to_param, :pastproject => { }
    assert_redirected_to pastproject_path(assigns(:pastproject))
  end

  test "should destroy pastproject" do
    assert_difference('Pastproject.count', -1) do
      delete :destroy, :id => pastprojects(:one).to_param
    end

    assert_redirected_to pastprojects_path
  end
end
