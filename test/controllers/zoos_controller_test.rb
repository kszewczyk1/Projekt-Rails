require 'test_helper'

class ZoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zoo = zoos(:one)
  end

  test "should get index" do
    get zoos_url
    assert_response :success
  end

  test "should get new" do
    get new_zoo_url
    assert_response :success
  end

  test "should create zoo" do
    assert_difference('Zoo.count') do
      post zoos_url, params: { zoo: { name: @zoo.name, species: @zoo.species } }
    end

    assert_redirected_to zoo_path(Zoo.last)
  end

  test "should show zoo" do
    get zoo_url(@zoo)
    assert_response :success
  end

  test "should get edit" do
    get edit_zoo_url(@zoo)
    assert_response :success
  end

  test "should update zoo" do
    patch zoo_url(@zoo), params: { zoo: { name: @zoo.name, species: @zoo.species } }
    assert_redirected_to zoo_path(@zoo)
  end

  test "should destroy zoo" do
    assert_difference('Zoo.count', -1) do
      delete zoo_url(@zoo)
    end

    assert_redirected_to zoos_path
  end
end
