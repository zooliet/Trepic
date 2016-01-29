require "test_helper"

class TweetsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_response :success
  end

  def test_show
    get :show
    assert_response :success
  end

  def test_destroy
    get :destroy
    assert_response :success
  end

end
