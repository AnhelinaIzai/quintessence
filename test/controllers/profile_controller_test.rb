require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get user_is:integer" do
    get profile_user_is:integer_url
    assert_response :success
  end

  test "should get firstname:string" do
    get profile_firstname:string_url
    assert_response :success
  end

  test "should get lastname:string" do
    get profile_lastname:string_url
    assert_response :success
  end

  test "should get email:string" do
    get profile_email:string_url
    assert_response :success
  end

  test "should get country:string" do
    get profile_country:string_url
    assert_response :success
  end

end
