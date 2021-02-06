require "test_helper"

class ProcessorCoolersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @processor_cooler = processor_coolers(:one)
  end

  test "should get index" do
    get processor_coolers_url
    assert_response :success
  end

  test "should get new" do
    get new_processor_cooler_url
    assert_response :success
  end

  test "should create processor_cooler" do
    assert_difference('ProcessorCooler.count') do
      post processor_coolers_url, params: { processor_cooler: { brand: @processor_cooler.brand, color: @processor_cooler.color, fan_rpm: @processor_cooler.fan_rpm, name: @processor_cooler.name, noise_level: @processor_cooler.noise_level, price: @processor_cooler.price, radiator_size: @processor_cooler.radiator_size } }
    end

    assert_redirected_to processor_cooler_url(ProcessorCooler.last)
  end

  test "should show processor_cooler" do
    get processor_cooler_url(@processor_cooler)
    assert_response :success
  end

  test "should get edit" do
    get edit_processor_cooler_url(@processor_cooler)
    assert_response :success
  end

  test "should update processor_cooler" do
    patch processor_cooler_url(@processor_cooler), params: { processor_cooler: { brand: @processor_cooler.brand, color: @processor_cooler.color, fan_rpm: @processor_cooler.fan_rpm, name: @processor_cooler.name, noise_level: @processor_cooler.noise_level, price: @processor_cooler.price, radiator_size: @processor_cooler.radiator_size } }
    assert_redirected_to processor_cooler_url(@processor_cooler)
  end

  test "should destroy processor_cooler" do
    assert_difference('ProcessorCooler.count', -1) do
      delete processor_cooler_url(@processor_cooler)
    end

    assert_redirected_to processor_coolers_url
  end
end
