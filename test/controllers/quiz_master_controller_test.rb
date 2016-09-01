require 'test_helper'

class QuizMasterControllerTest < ActionDispatch::IntegrationTest
  test "should get lvl" do
    get quiz_master_lvl_url
    assert_response :success
  end

end
