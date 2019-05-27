require 'test_helper'

class TestQuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get test_questions_new_url
    assert_response :success
  end

  test "should get edit" do
    get test_questions_edit_url
    assert_response :success
  end

  test "should get show" do
    get test_questions_show_url
    assert_response :success
  end

  test "should get index" do
    get test_questions_index_url
    assert_response :success
  end

end
