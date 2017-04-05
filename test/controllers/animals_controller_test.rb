require 'test_helper'

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get animals_index_url
    assert_response :success
  end

  test "should get new" do
    get animals_new_url
    assert_response :success
  end

  test "should get show" do
    get animals_show_url
    assert_response :success
  end

  test "should get update" do
    get animals_update_url
    assert_response :success
  end

end
