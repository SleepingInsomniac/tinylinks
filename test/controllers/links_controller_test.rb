require 'test_helper'

class LinksControllerTest < ActionController::TestCase
  setup do
    @link = links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create link" do
    assert_difference('Link.count') do
      post :create, link: { enabled: @link.enabled, full: @link.full, short: @link.short }
    end

    assert_redirected_to link_path(assigns(:link))
  end

  test "should show link" do
    get :show, id: @link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @link
    assert_response :success
  end

  test "should update link" do
    patch :update, id: @link, link: { enabled: @link.enabled, full: @link.full, short: @link.short }
    assert_redirected_to link_path(assigns(:link))
  end

  test "should destroy link" do
    assert_difference('Link.count', -1) do
      delete :destroy, id: @link
    end

    assert_redirected_to links_path
  end
end
