require 'test_helper'

class SprinklesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sprinkle = sprinkles(:one)
  end

  test "should get index" do
    get sprinkles_url
    assert_response :success
  end

  test "should get new" do
    get new_sprinkle_url
    assert_response :success
  end

  test "should create sprinkle" do
    assert_difference('Sprinkle.count') do
      post sprinkles_url, params: { sprinkle: { base_start_time: @sprinkle.base_start_time, duration: @sprinkle.duration, next_start_time: @sprinkle.next_start_time, time_input: @sprinkle.time_input, valve_id: @sprinkle.valve_id } }
    end

    assert_redirected_to sprinkle_url(Sprinkle.last)
  end

  test "should show sprinkle" do
    get sprinkle_url(@sprinkle)
    assert_response :success
  end

  test "should get edit" do
    get edit_sprinkle_url(@sprinkle)
    assert_response :success
  end

  test "should update sprinkle" do
    patch sprinkle_url(@sprinkle), params: { sprinkle: { base_start_time: @sprinkle.base_start_time, duration: @sprinkle.duration, next_start_time: @sprinkle.next_start_time, time_input: @sprinkle.time_input, valve_id: @sprinkle.valve_id } }
    assert_redirected_to sprinkle_url(@sprinkle)
  end

  test "should destroy sprinkle" do
    assert_difference('Sprinkle.count', -1) do
      delete sprinkle_url(@sprinkle)
    end

    assert_redirected_to sprinkles_url
  end
end
