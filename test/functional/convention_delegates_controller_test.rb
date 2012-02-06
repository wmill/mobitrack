require 'test_helper'

class ConventionDelegatesControllerTest < ActionController::TestCase
  setup do
    @convention_delegate = convention_delegates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:convention_delegates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create convention_delegate" do
    assert_difference('ConventionDelegate.count') do
      post :create, convention_delegate: @convention_delegate.attributes
    end

    assert_redirected_to convention_delegate_path(assigns(:convention_delegate))
  end

  test "should show convention_delegate" do
    get :show, id: @convention_delegate.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @convention_delegate.to_param
    assert_response :success
  end

  test "should update convention_delegate" do
    put :update, id: @convention_delegate.to_param, convention_delegate: @convention_delegate.attributes
    assert_redirected_to convention_delegate_path(assigns(:convention_delegate))
  end

  test "should destroy convention_delegate" do
    assert_difference('ConventionDelegate.count', -1) do
      delete :destroy, id: @convention_delegate.to_param
    end

    assert_redirected_to convention_delegates_path
  end
end
