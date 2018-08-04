require 'test_helper'

class WeeklyListsControllerTest < ActionDispatch::IntegrationTest
  test "should get this_week" do
    get weekly_lists_this_week_url
    assert_response :success
  end

  test "should get shopping_list" do
    get weekly_lists_shopping_list_url
    assert_response :success
  end

end
