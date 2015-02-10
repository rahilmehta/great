require 'test_helper'

class GreatsControllerTest < ActionController::TestCase
  setup do
    @great = greats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:greats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create great" do
    assert_difference('Great.count') do
      post :create, great: { content: @great.content, name: @great.name }
    end

    assert_redirected_to great_path(assigns(:great))
  end

  test "should show great" do
    get :show, id: @great
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @great
    assert_response :success
  end

  test "should update great" do
    patch :update, id: @great, great: { content: @great.content, name: @great.name }
    assert_redirected_to great_path(assigns(:great))
  end

  test "should destroy great" do
    assert_difference('Great.count', -1) do
      delete :destroy, id: @great
    end

    assert_redirected_to greats_path
  end
end
