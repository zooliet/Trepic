require "test_helper"

class DummiesControllerTest < ActionController::TestCase
  def dummy
    @dummy ||= dummies :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:dummies)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Dummy.count") do
      post :create, dummy: { description: dummy.description, name: dummy.name }
    end

    assert_redirected_to dummy_path(assigns(:dummy))
  end

  def test_show
    get :show, id: dummy
    assert_response :success
  end

  def test_edit
    get :edit, id: dummy
    assert_response :success
  end

  def test_update
    put :update, id: dummy, dummy: { description: dummy.description, name: dummy.name }
    assert_redirected_to dummy_path(assigns(:dummy))
  end

  def test_destroy
    assert_difference("Dummy.count", -1) do
      delete :destroy, id: dummy
    end

    assert_redirected_to dummies_path
  end
end
