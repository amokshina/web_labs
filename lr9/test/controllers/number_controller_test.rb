require "test_helper"

class NumberControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get number_input_url
    assert_response :success
  end

  test "should redirect on unsuccessful validation" do
    get number_view_url, params: { v1: 'abc' }
    assert_redirected_to action: :input
    assert_response :redirect
    assert_equal "Введите положительное целое число.", flash[:error]
  end

  test "should handle input of zero and redirect to input with error message" do
    get number_view_url, params: { v1: '0' }
    assert_redirected_to action: :input
    assert_response :redirect
    assert_equal "Введите положительное целое число.", flash[:error]
  end

  test "should response on successful validation" do
    get number_view_url, params: { v1: '10' }
    assert_response :success
    assert_not_nil assigns(:result)
  end
end


