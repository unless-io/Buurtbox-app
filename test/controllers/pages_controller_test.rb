require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get bibliotheek" do
    get pages_bibliotheek_url
    assert_response :success
  end

  test "should get bestanden_delen" do
    get pages_bestanden_delen_url
    assert_response :success
  end

  test "should get over" do
    get pages_over_url
    assert_response :success
  end
end
