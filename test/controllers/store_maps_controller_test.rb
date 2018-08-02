require 'test_helper'

class StoreMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_map = store_maps(:one)
  end

  test "should get index" do
    get store_maps_url
    assert_response :success
  end

  test "should get new" do
    get new_store_map_url
    assert_response :success
  end

  test "should create store_map" do
    assert_difference('StoreMap.count') do
      post store_maps_url, params: { store_map: { aisl: @store_map.aisl, aisle_number: @store_map.aisle_number } }
    end

    assert_redirected_to store_map_url(StoreMap.last)
  end

  test "should show store_map" do
    get store_map_url(@store_map)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_map_url(@store_map)
    assert_response :success
  end

  test "should update store_map" do
    patch store_map_url(@store_map), params: { store_map: { aisl: @store_map.aisl, aisle_number: @store_map.aisle_number } }
    assert_redirected_to store_map_url(@store_map)
  end

  test "should destroy store_map" do
    assert_difference('StoreMap.count', -1) do
      delete store_map_url(@store_map)
    end

    assert_redirected_to store_maps_url
  end
end
