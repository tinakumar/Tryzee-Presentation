require 'test_helper'

class SearchesControllerTest < ActionController::TestCase
  setup do
    @search = searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create search" do
    assert_difference('Search.count') do
      post :create, search: { category_id: @search.category_id, keywords: @search.keywords, listing_id: @search.listing_id, model_id: @search.model_id }
    end

    assert_redirected_to search_path(assigns(:search))
  end

  test "should show search" do
    get :show, id: @search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @search
    assert_response :success
  end

  test "should update search" do
    put :update, id: @search, search: { category_id: @search.category_id, keywords: @search.keywords, listing_id: @search.listing_id, model_id: @search.model_id }
    assert_redirected_to search_path(assigns(:search))
  end

  test "should destroy search" do
    assert_difference('Search.count', -1) do
      delete :destroy, id: @search
    end

    assert_redirected_to searches_path
  end
end
