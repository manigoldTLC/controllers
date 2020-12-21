require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get nome:string" do
    get books_nome:string_url
    assert_response :success
  end

  test "should get ano:integer" do
    get books_ano:integer_url
    assert_response :success
  end

  test "should get escritor:string" do
    get books_escritor:string_url
    assert_response :success
  end
end
