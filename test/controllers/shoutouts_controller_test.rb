require "test_helper"

class ShoutoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shoutout = shoutouts(:one)
  end

  test "should get index" do
    get shoutouts_url
    assert_response :success
  end

  test "should get new" do
    get new_shoutout_url
    assert_response :success
  end

  test "should create shoutout" do
    assert_difference("Shoutout.count") do
      post shoutouts_url, params: { shoutout: { body: @shoutout.body, name: @shoutout.name, usrname: @shoutout.usrname } }
    end

    assert_redirected_to shoutout_url(Shoutout.last)
  end

  test "should show shoutout" do
    get shoutout_url(@shoutout)
    assert_response :success
  end

  test "should get edit" do
    get edit_shoutout_url(@shoutout)
    assert_response :success
  end

  test "should update shoutout" do
    patch shoutout_url(@shoutout), params: { shoutout: { body: @shoutout.body, name: @shoutout.name, usrname: @shoutout.usrname } }
    assert_redirected_to shoutout_url(@shoutout)
  end

  test "should destroy shoutout" do
    assert_difference("Shoutout.count", -1) do
      delete shoutout_url(@shoutout)
    end

    assert_redirected_to shoutouts_url
  end
end
