require 'test_helper'

class SaysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get says_new_url
    assert_response :success
  end

  test "should get hello" do
    get says_hello_url
    assert_response :success
  end

  test "should get say_hello" do
    get says_say_hello_url
    assert_response :success
  end

  test "should get say_hello_joe" do
    get says_say_hello_joe_url
    assert_response :success
  end

  test "should get say_hello_michael" do
    get says_say_hello_michael_url
    assert_response :success
  end

  test "should get times" do
    get says_times_url
    assert_response :success
  end

  test "should get times_restart" do
    get says_times_restart_url
    assert_response :success
  end

end
