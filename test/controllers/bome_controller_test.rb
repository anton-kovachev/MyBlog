require 'test_helper'

class BomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bome_index_url
    assert_response :success
  end

end
