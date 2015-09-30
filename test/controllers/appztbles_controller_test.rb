require 'test_helper'

class AppztblesControllerTest < ActionController::TestCase
  setup do
    @appztble = appztbles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appztbles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appztble" do
    assert_difference('Appztble.count') do
      post :create, appztble: { name: @appztble.name }
    end

    assert_redirected_to appztble_path(assigns(:appztble))
  end

  test "should show appztble" do
    get :show, id: @appztble
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appztble
    assert_response :success
  end

  test "should update appztble" do
    patch :update, id: @appztble, appztble: { name: @appztble.name }
    assert_redirected_to appztble_path(assigns(:appztble))
  end

  test "should destroy appztble" do
    assert_difference('Appztble.count', -1) do
      delete :destroy, id: @appztble
    end

    assert_redirected_to appztbles_path
  end
end
