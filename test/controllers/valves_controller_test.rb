require 'test_helper'

class ValvesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valf = valves(:one)
  end

  test "should get index" do
    get valves_url
    assert_response :success
  end

  test "should get new" do
    get new_valf_url
    assert_response :success
  end

  test "should create valf" do
    assert_difference('Valve.count') do
      post valves_url, params: { valf: { base_time: @valf.base_time, bb2relay_color: @valf.bb2relay_color, bb_pin: @valf.bb_pin, cmd: @valf.cmd, cpu2bb_color: @valf.cpu2bb_color, gpio_pin: @valf.gpio_pin, name: @valf.name, relay2valve_color: @valf.relay2valve_color, relay_index: @valf.relay_index, relay_module: @valf.relay_module } }
    end

    assert_redirected_to valf_url(Valve.last)
  end

  test "should show valf" do
    get valf_url(@valf)
    assert_response :success
  end

  test "should get edit" do
    get edit_valf_url(@valf)
    assert_response :success
  end

  test "should update valf" do
    patch valf_url(@valf), params: { valf: { base_time: @valf.base_time, bb2relay_color: @valf.bb2relay_color, bb_pin: @valf.bb_pin, cmd: @valf.cmd, cpu2bb_color: @valf.cpu2bb_color, gpio_pin: @valf.gpio_pin, name: @valf.name, relay2valve_color: @valf.relay2valve_color, relay_index: @valf.relay_index, relay_module: @valf.relay_module } }
    assert_redirected_to valf_url(@valf)
  end

  test "should destroy valf" do
    assert_difference('Valve.count', -1) do
      delete valf_url(@valf)
    end

    assert_redirected_to valves_url
  end
end
