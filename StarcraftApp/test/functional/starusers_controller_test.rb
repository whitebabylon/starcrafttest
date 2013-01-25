require 'test_helper'

class StarusersControllerTest < ActionController::TestCase
  setup do
    @staruser = starusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:starusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staruser" do
    assert_difference('Staruser.count') do
      post :create, staruser: { crypted_password: @staruser.crypted_password, email: @staruser.email, password_salt: @staruser.password_salt, persistence_token: @staruser.persistence_token, username: @staruser.username }
    end

    assert_redirected_to staruser_path(assigns(:staruser))
  end

  test "should show staruser" do
    get :show, id: @staruser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staruser
    assert_response :success
  end

  test "should update staruser" do
    put :update, id: @staruser, staruser: { crypted_password: @staruser.crypted_password, email: @staruser.email, password_salt: @staruser.password_salt, persistence_token: @staruser.persistence_token, username: @staruser.username }
    assert_redirected_to staruser_path(assigns(:staruser))
  end

  test "should destroy staruser" do
    assert_difference('Staruser.count', -1) do
      delete :destroy, id: @staruser
    end

    assert_redirected_to starusers_path
  end
end
