require 'test_helper'

class TryalsControllerTest < ActionController::TestCase
  setup do
    @tryal = tryals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tryals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tryal" do
    assert_difference('Tryal.count') do
      post :create, tryal: { due_at: @tryal.due_at, lender_id: @tryal.lender_id, listing_id: @tryal.listing_id, start_at: @tryal.start_at, status: @tryal.status, user_id: @tryal.user_id }
    end

    assert_redirected_to tryal_path(assigns(:tryal))
  end

  test "should show tryal" do
    get :show, id: @tryal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tryal
    assert_response :success
  end

  test "should update tryal" do
    put :update, id: @tryal, tryal: { due_at: @tryal.due_at, lender_id: @tryal.lender_id, listing_id: @tryal.listing_id, start_at: @tryal.start_at, status: @tryal.status, user_id: @tryal.user_id }
    assert_redirected_to tryal_path(assigns(:tryal))
  end

  test "should destroy tryal" do
    assert_difference('Tryal.count', -1) do
      delete :destroy, id: @tryal
    end

    assert_redirected_to tryals_path
  end
end
