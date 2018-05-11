require 'test_helper'

class KlassesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get klasses_new_url
    assert_response :success
  end

  test "should get create" do
    get klasses_create_url
    assert_response :success
  end

  test "should get update" do
    get klasses_update_url
    assert_response :success
  end

  test "should get edit" do
    get klasses_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get klasses_destroy_url
    assert_response :success
  end

  test "should get index" do
    get klasses_index_url
    assert_response :success
  end

  test "should get show" do
    get klasses_show_url
    assert_response :success
  end

end
