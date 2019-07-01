require 'test_helper'

class CoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cour = cours(:one)
  end

  test "should get index" do
    get cours_url
    assert_response :success
  end

  test "should get new" do
    get new_cour_url
    assert_response :success
  end

  test "should create cour" do
    assert_difference('Cour.count') do
      post cours_url, params: { cour: { name: @cour.name } }
    end

    assert_redirected_to cour_url(Cour.last)
  end

  test "should show cour" do
    get cour_url(@cour)
    assert_response :success
  end

  test "should get edit" do
    get edit_cour_url(@cour)
    assert_response :success
  end

  test "should update cour" do
    patch cour_url(@cour), params: { cour: { name: @cour.name } }
    assert_redirected_to cour_url(@cour)
  end

  test "should destroy cour" do
    assert_difference('Cour.count', -1) do
      delete cour_url(@cour)
    end

    assert_redirected_to cours_url
  end
end
