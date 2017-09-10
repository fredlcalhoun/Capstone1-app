require 'test_helper'

class MessageControllerTest < ActionDispatch::IntegrationTest
  test "should get user_id:string" do
    get message_user_id:string_url
    assert_response :success
  end

  test "should get other_user_id:string" do
    get message_other_user_id:string_url
    assert_response :success
  end

  test "should get body:string" do
    get message_body:string_url
    assert_response :success
  end

end
