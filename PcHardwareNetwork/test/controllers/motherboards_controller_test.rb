require "test_helper"

class MotherboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @motherboard = motherboards(:one)
  end

  test "should get index" do
    get motherboards_url
    assert_response :success
  end

  test "should get new" do
    get new_motherboard_url
    assert_response :success
  end

  test "should create motherboard" do
    assert_difference('Motherboard.count') do
      post motherboards_url, params: { motherboard: { brand: @motherboard.brand, color: @motherboard.color, form_factor: @motherboard.form_factor, memory_max: @motherboard.memory_max, memory_slots: @motherboard.memory_slots, name: @motherboard.name, price: @motherboard.price, socket: @motherboard.socket } }
    end

    assert_redirected_to motherboard_url(Motherboard.last)
  end

  test "should show motherboard" do
    get motherboard_url(@motherboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_motherboard_url(@motherboard)
    assert_response :success
  end

  test "should update motherboard" do
    patch motherboard_url(@motherboard), params: { motherboard: { brand: @motherboard.brand, color: @motherboard.color, form_factor: @motherboard.form_factor, memory_max: @motherboard.memory_max, memory_slots: @motherboard.memory_slots, name: @motherboard.name, price: @motherboard.price, socket: @motherboard.socket } }
    assert_redirected_to motherboard_url(@motherboard)
  end

  test "should destroy motherboard" do
    assert_difference('Motherboard.count', -1) do
      delete motherboard_url(@motherboard)
    end

    assert_redirected_to motherboards_url
  end
end
