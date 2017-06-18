require 'test_helper'

class SprinkleEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sprinkle_event = sprinkle_events(:one)
  end

  test "should get index" do
    get sprinkle_events_url
    assert_response :success
  end

  test "should get new" do
    get new_sprinkle_event_url
    assert_response :success
  end

  test "should create sprinkle_event" do
    assert_difference('SprinkleEvent.count') do
      post sprinkle_events_url, params: { sprinkle_event: { history_id: @sprinkle_event.history_id, sprinkle_id: @sprinkle_event.sprinkle_id, valve_cmd: @sprinkle_event.valve_cmd, valve_id: @sprinkle_event.valve_id } }
    end

    assert_redirected_to sprinkle_event_url(SprinkleEvent.last)
  end

  test "should show sprinkle_event" do
    get sprinkle_event_url(@sprinkle_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_sprinkle_event_url(@sprinkle_event)
    assert_response :success
  end

  test "should update sprinkle_event" do
    patch sprinkle_event_url(@sprinkle_event), params: { sprinkle_event: { history_id: @sprinkle_event.history_id, sprinkle_id: @sprinkle_event.sprinkle_id, valve_cmd: @sprinkle_event.valve_cmd, valve_id: @sprinkle_event.valve_id } }
    assert_redirected_to sprinkle_event_url(@sprinkle_event)
  end

  test "should destroy sprinkle_event" do
    assert_difference('SprinkleEvent.count', -1) do
      delete sprinkle_event_url(@sprinkle_event)
    end

    assert_redirected_to sprinkle_events_url
  end
end
