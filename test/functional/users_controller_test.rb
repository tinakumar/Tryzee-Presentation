require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { address2: @user.address2, address: @user.address, city: @user.city, email: @user.email, first_name: @user.first_name, last_name: @user.last_name, latitude: @user.latitude, longitude: @user.longitude, password_digest: @user.password_digest, photo_url: @user.photo_url, state: @user.state, zip_code: @user.zip_code }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { address2: @user.address2, address: @user.address, city: @user.city, email: @user.email, first_name: @user.first_name, last_name: @user.last_name, latitude: @user.latitude, longitude: @user.longitude, password_digest: @user.password_digest, photo_url: @user.photo_url, state: @user.state, zip_code: @user.zip_code }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
