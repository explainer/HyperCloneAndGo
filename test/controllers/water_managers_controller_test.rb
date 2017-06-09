require 'test_helper'

class WaterManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @water_manager = water_managers(:one)
  end

  test "should get index" do
    get water_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_water_manager_url
    assert_response :success
  end

  test "should create water_manager" do
    assert_difference('WaterManager.count') do
      post water_managers_url, params: { water_manager: { http_host: @water_manager.http_host, state: @water_manager.state } }
    end

    assert_redirected_to water_manager_url(WaterManager.last)
  end

  test "should show water_manager" do
    get water_manager_url(@water_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_water_manager_url(@water_manager)
    assert_response :success
  end

  test "should update water_manager" do
    patch water_manager_url(@water_manager), params: { water_manager: { http_host: @water_manager.http_host, state: @water_manager.state } }
    assert_redirected_to water_manager_url(@water_manager)
  end

  test "should destroy water_manager" do
    assert_difference('WaterManager.count', -1) do
      delete water_manager_url(@water_manager)
    end

    assert_redirected_to water_managers_url
  end
end
