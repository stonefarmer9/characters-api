require 'test_helper'

class BasicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @basic = basics(:one)
  end

  test "should get index" do
    get basics_url
    assert_response :success
  end

  test "should get new" do
    get new_basic_url
    assert_response :success
  end

  test "should create basic" do
    assert_difference('Basic.count') do
      post basics_url, params: { basic: { age: @basic.age, class: @basic.class, height: @basic.height, name: @basic.name, race: @basic.race, sex: @basic.sex } }
    end

    assert_redirected_to basic_url(Basic.last)
  end

  test "should show basic" do
    get basic_url(@basic)
    assert_response :success
  end

  test "should get edit" do
    get edit_basic_url(@basic)
    assert_response :success
  end

  test "should update basic" do
    patch basic_url(@basic), params: { basic: { age: @basic.age, class: @basic.class, height: @basic.height, name: @basic.name, race: @basic.race, sex: @basic.sex } }
    assert_redirected_to basic_url(@basic)
  end

  test "should destroy basic" do
    assert_difference('Basic.count', -1) do
      delete basic_url(@basic)
    end

    assert_redirected_to basics_url
  end
end
