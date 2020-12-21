require "test_helper"

class AuthorsControllerTest < ActionDispatch::IntegrationTest
  test "should get nome:string" do
    get authors_nome:string_url
    assert_response :success
  end

  test "should get ano:integer" do
    get authors_ano:integer_url
    assert_response :success
  end

  test "should get pais:string" do
    get authors_pais:string_url
    assert_response :success
  end
end
