require 'test_helper'

class Public::CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get my_cart" do
    get public_carts_my_cart_url
    assert_response :success
  end

end
