require 'test_helper'

class TestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tests_index_url
    assert_response :success
  end

  test "should get start" do
    get tests_start_url
    assert_response :success
  end

  test "should get question" do
    get tests_question_url
    assert_response :success
  end

  test "should get answer" do
    get tests_answer_url
    assert_response :success
  end

  test "should get end" do
    get tests_end_url
    assert_response :success
  end

end
