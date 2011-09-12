require 'test_helper'

class TelefonesControllerTest < ActionController::TestCase
  setup do
    @telefone = telefones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telefones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telefone" do
    assert_difference('Telefone.count') do
      post :create, :telefone => @telefone.attributes
    end

    assert_redirected_to telefone_path(assigns(:telefone))
  end

  test "should show telefone" do
    get :show, :id => @telefone.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @telefone.to_param
    assert_response :success
  end

  test "should update telefone" do
    put :update, :id => @telefone.to_param, :telefone => @telefone.attributes
    assert_redirected_to telefone_path(assigns(:telefone))
  end

  test "should destroy telefone" do
    assert_difference('Telefone.count', -1) do
      delete :destroy, :id => @telefone.to_param
    end

    assert_redirected_to telefones_path
  end
end
