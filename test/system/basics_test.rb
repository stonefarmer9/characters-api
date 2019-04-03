require "application_system_test_case"

class BasicsTest < ApplicationSystemTestCase
  setup do
    @basic = basics(:one)
  end

  test "visiting the index" do
    visit basics_url
    assert_selector "h1", text: "Basics"
  end

  test "creating a Basic" do
    visit basics_url
    click_on "New Basic"

    fill_in "Age", with: @basic.age
    fill_in "Class", with: @basic.class
    fill_in "Height", with: @basic.height
    fill_in "Name", with: @basic.name
    fill_in "Race", with: @basic.race
    fill_in "Sex", with: @basic.sex
    click_on "Create Basic"

    assert_text "Basic was successfully created"
    click_on "Back"
  end

  test "updating a Basic" do
    visit basics_url
    click_on "Edit", match: :first

    fill_in "Age", with: @basic.age
    fill_in "Class", with: @basic.class
    fill_in "Height", with: @basic.height
    fill_in "Name", with: @basic.name
    fill_in "Race", with: @basic.race
    fill_in "Sex", with: @basic.sex
    click_on "Update Basic"

    assert_text "Basic was successfully updated"
    click_on "Back"
  end

  test "destroying a Basic" do
    visit basics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Basic was successfully destroyed"
  end
end
