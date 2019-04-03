require "application_system_test_case"

class SkillsTest < ApplicationSystemTestCase
  setup do
    @skill = skills(:one)
  end

  test "visiting the index" do
    visit skills_url
    assert_selector "h1", text: "Skills"
  end

  test "creating a Skill" do
    visit skills_url
    click_on "New Skill"

    fill_in "Basic", with: @skill.basic_id
    fill_in "Charisma", with: @skill.charisma
    fill_in "Constitution", with: @skill.constitution
    fill_in "Dexterity", with: @skill.dexterity
    fill_in "Intelligence", with: @skill.intelligence
    fill_in "Strength", with: @skill.strength
    fill_in "Wisdom", with: @skill.wisdom
    click_on "Create Skill"

    assert_text "Skill was successfully created"
    click_on "Back"
  end

  test "updating a Skill" do
    visit skills_url
    click_on "Edit", match: :first

    fill_in "Basic", with: @skill.basic_id
    fill_in "Charisma", with: @skill.charisma
    fill_in "Constitution", with: @skill.constitution
    fill_in "Dexterity", with: @skill.dexterity
    fill_in "Intelligence", with: @skill.intelligence
    fill_in "Strength", with: @skill.strength
    fill_in "Wisdom", with: @skill.wisdom
    click_on "Update Skill"

    assert_text "Skill was successfully updated"
    click_on "Back"
  end

  test "destroying a Skill" do
    visit skills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Skill was successfully destroyed"
  end
end
