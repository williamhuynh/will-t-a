require 'test_helper'

class TravelMapsControllerTest < ActionController::TestCase
  setup do
    @travel_map = travel_maps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travel_maps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel_map" do
    assert_difference('TravelMap.count') do
      post :create, travel_map: { cost: @travel_map.cost, description: @travel_map.description, duration: @travel_map.duration, name: @travel_map.name, profile_id: @travel_map.profile_id }
    end

    assert_redirected_to travel_map_path(assigns(:travel_map))
  end

  test "should show travel_map" do
    get :show, id: @travel_map
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel_map
    assert_response :success
  end

  test "should update travel_map" do
    patch :update, id: @travel_map, travel_map: { cost: @travel_map.cost, description: @travel_map.description, duration: @travel_map.duration, name: @travel_map.name, profile_id: @travel_map.profile_id }
    assert_redirected_to travel_map_path(assigns(:travel_map))
  end

  test "should destroy travel_map" do
    assert_difference('TravelMap.count', -1) do
      delete :destroy, id: @travel_map
    end

    assert_redirected_to travel_maps_path
  end
end
