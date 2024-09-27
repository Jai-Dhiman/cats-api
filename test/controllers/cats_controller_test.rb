require "test_helper"

class CatsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/cats.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Cat.count, data.length
  end
end
