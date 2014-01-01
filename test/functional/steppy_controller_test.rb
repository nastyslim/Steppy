require 'test_helper'

class SteppyControllerTest < ActionController::TestCase
  test "should get ask" do
    get :ask
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
