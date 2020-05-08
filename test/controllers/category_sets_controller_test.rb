require 'test_helper'

class CategorySetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_set = category_sets(:one)
  end

  test "should get index" do
    get category_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_category_set_url
    assert_response :success
  end

  test "should create category_set" do
    assert_difference('CategorySet.count') do
      post category_sets_url, params: { category_set: { category_set_name: @category_set.category_set_name } }
    end

    assert_redirected_to category_set_url(CategorySet.last)
  end

  test "should show category_set" do
    get category_set_url(@category_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_set_url(@category_set)
    assert_response :success
  end

  test "should update category_set" do
    patch category_set_url(@category_set), params: { category_set: { category_set_name: @category_set.category_set_name } }
    assert_redirected_to category_set_url(@category_set)
  end

  test "should destroy category_set" do
    assert_difference('CategorySet.count', -1) do
      delete category_set_url(@category_set)
    end

    assert_redirected_to category_sets_url
  end
end
