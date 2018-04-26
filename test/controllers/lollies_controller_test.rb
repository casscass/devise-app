require 'test_helper'

class LolliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lolly = lollies(:one)
  end

  test "should get index" do
    get lollies_url
    assert_response :success
  end

  test "should get new" do
    get new_lolly_url
    assert_response :success
  end

  test "should create lolly" do
    assert_difference('Lolly.count') do
      post lollies_url, params: { lolly: { description: @lolly.description, name: @lolly.name, price: @lolly.price } }
    end

    assert_redirected_to lolly_url(Lolly.last)
  end

  test "should show lolly" do
    get lolly_url(@lolly)
    assert_response :success
  end

  test "should get edit" do
    get edit_lolly_url(@lolly)
    assert_response :success
  end

  test "should update lolly" do
    patch lolly_url(@lolly), params: { lolly: { description: @lolly.description, name: @lolly.name, price: @lolly.price } }
    assert_redirected_to lolly_url(@lolly)
  end

  test "should destroy lolly" do
    assert_difference('Lolly.count', -1) do
      delete lolly_url(@lolly)
    end

    assert_redirected_to lollies_url
  end
end
