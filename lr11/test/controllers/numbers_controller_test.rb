require "test_helper"

class NumbersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get numbers_index_url
    assert_response :success
  end

  test "should get view" do
    get numbers_view_url
    assert_response :success
  end

  test 'results are different for different input parameters' do
    get numbers_view_url, params: { v1: '10' }
    result_1 = ActiveSupport::JSON.decode(@response.body)

    get numbers_view_url, params: { v1: '30' }
    result_2 = ActiveSupport::JSON.decode(@response.body)

    assert_not_equal result_1, result_2
  end
end
