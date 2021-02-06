require "test_helper"

class PowerSuppliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @power_supply = power_supplies(:one)
  end

  test "should get index" do
    get power_supplies_url
    assert_response :success
  end

  test "should get new" do
    get new_power_supply_url
    assert_response :success
  end

  test "should create power_supply" do
    assert_difference('PowerSupply.count') do
      post power_supplies_url, params: { power_supply: { brand: @power_supply.brand, color: @power_supply.color, efficiency_rating: @power_supply.efficiency_rating, form_factor: @power_supply.form_factor, modular: @power_supply.modular, name: @power_supply.name, price: @power_supply.price, wattage: @power_supply.wattage } }
    end

    assert_redirected_to power_supply_url(PowerSupply.last)
  end

  test "should show power_supply" do
    get power_supply_url(@power_supply)
    assert_response :success
  end

  test "should get edit" do
    get edit_power_supply_url(@power_supply)
    assert_response :success
  end

  test "should update power_supply" do
    patch power_supply_url(@power_supply), params: { power_supply: { brand: @power_supply.brand, color: @power_supply.color, efficiency_rating: @power_supply.efficiency_rating, form_factor: @power_supply.form_factor, modular: @power_supply.modular, name: @power_supply.name, price: @power_supply.price, wattage: @power_supply.wattage } }
    assert_redirected_to power_supply_url(@power_supply)
  end

  test "should destroy power_supply" do
    assert_difference('PowerSupply.count', -1) do
      delete power_supply_url(@power_supply)
    end

    assert_redirected_to power_supplies_url
  end
end
