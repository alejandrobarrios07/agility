require 'test_helper'

class DuosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @duo = duos(:one)
  end

  test "should get index" do
    get duos_url
    assert_response :success
  end

  test "should get new" do
    get new_duo_url
    assert_response :success
  end

  test "should create duo" do
    assert_difference('Duo.count') do
      post duos_url, params: { duo: { dog_id: @duo.dog_id, handler_id: @duo.handler_id } }
    end

    assert_redirected_to duo_url(Duo.last)
  end

  test "should show duo" do
    get duo_url(@duo)
    assert_response :success
  end

  test "should get edit" do
    get edit_duo_url(@duo)
    assert_response :success
  end

  test "should update duo" do
    patch duo_url(@duo), params: { duo: { dog_id: @duo.dog_id, handler_id: @duo.handler_id } }
    assert_redirected_to duo_url(@duo)
  end

  test "should destroy duo" do
    assert_difference('Duo.count', -1) do
      delete duo_url(@duo)
    end

    assert_redirected_to duos_url
  end
end
