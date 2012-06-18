require 'test_helper'

class FmControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get elfinder" do
    get :elfinder
    assert_response :success
  end

end
