require "application_system_test_case"

class CategorySetsTest < ApplicationSystemTestCase
  setup do
    @category_set = category_sets(:one)
  end

  test "visiting the index" do
    visit category_sets_url
    assert_selector "h1", text: "Category Sets"
  end

  test "creating a Category set" do
    visit category_sets_url
    click_on "New Category Set"

    fill_in "Category set name", with: @category_set.category_set_name
    click_on "Create Category set"

    assert_text "Category set was successfully created"
    click_on "Back"
  end

  test "updating a Category set" do
    visit category_sets_url
    click_on "Edit", match: :first

    fill_in "Category set name", with: @category_set.category_set_name
    click_on "Update Category set"

    assert_text "Category set was successfully updated"
    click_on "Back"
  end

  test "destroying a Category set" do
    visit category_sets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category set was successfully destroyed"
  end
end
