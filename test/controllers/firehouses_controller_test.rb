require 'test_helper'

class FirehousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @firehouse = firehouses(:one)
  end

  test "should get index" do
    get firehouses_url
    assert_response :success
  end

  test "should get new" do
    get new_firehouse_url
    assert_response :success
  end

  test "should create firehouse" do
    assert_difference('Firehouse.count') do
      post firehouses_url, params: { firehouse: { age: @firehouse.age, donationDest: @firehouse.donationDest, goalAmount: @firehouse.goalAmount, locationCounty: @firehouse.locationCounty, name: @firehouse.name, photo: @firehouse.photo, story: @firehouse.story, summary: @firehouse.summary } }
    end

    assert_redirected_to firehouse_url(Firehouse.last)
  end

  test "should show firehouse" do
    get firehouse_url(@firehouse)
    assert_response :success
  end

  test "should get edit" do
    get edit_firehouse_url(@firehouse)
    assert_response :success
  end

  test "should update firehouse" do
    patch firehouse_url(@firehouse), params: { firehouse: { age: @firehouse.age, donationDest: @firehouse.donationDest, goalAmount: @firehouse.goalAmount, locationCounty: @firehouse.locationCounty, name: @firehouse.name, photo: @firehouse.photo, story: @firehouse.story, summary: @firehouse.summary } }
    assert_redirected_to firehouse_url(@firehouse)
  end

  test "should destroy firehouse" do
    assert_difference('Firehouse.count', -1) do
      delete firehouse_url(@firehouse)
    end

    assert_redirected_to firehouses_url
  end
end
