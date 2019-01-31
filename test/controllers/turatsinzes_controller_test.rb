require 'test_helper'

class TuratsinzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turatsinze = turatsinzes(:one)
  end

  test "should get index" do
    get turatsinzes_url
    assert_response :success
  end

  test "should get new" do
    get new_turatsinze_url
    assert_response :success
  end

  test "should create turatsinze" do
    assert_difference('Turatsinze.count') do
      post turatsinzes_url, params: { turatsinze: { firstname: @turatsinze.firstname, lastname: @turatsinze.lastname } }
    end

    assert_redirected_to turatsinze_url(Turatsinze.last)
  end

  test "should show turatsinze" do
    get turatsinze_url(@turatsinze)
    assert_response :success
  end

  test "should get edit" do
    get edit_turatsinze_url(@turatsinze)
    assert_response :success
  end

  test "should update turatsinze" do
    patch turatsinze_url(@turatsinze), params: { turatsinze: { firstname: @turatsinze.firstname, lastname: @turatsinze.lastname } }
    assert_redirected_to turatsinze_url(@turatsinze)
  end

  test "should destroy turatsinze" do
    assert_difference('Turatsinze.count', -1) do
      delete turatsinze_url(@turatsinze)
    end

    assert_redirected_to turatsinzes_url
  end
end
