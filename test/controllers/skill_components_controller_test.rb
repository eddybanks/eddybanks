require 'test_helper'

class SkillComponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill_component = skill_components(:one)
  end

  test "should get index" do
    get skill_components_url
    assert_response :success
  end

  test "should get new" do
    get new_skill_component_url
    assert_response :success
  end

  test "should create skill_component" do
    assert_difference('SkillComponent.count') do
      post skill_components_url, params: { skill_component: { description: @skill_component.description, name: @skill_component.name } }
    end

    assert_redirected_to skill_component_url(SkillComponent.last)
  end

  test "should show skill_component" do
    get skill_component_url(@skill_component)
    assert_response :success
  end

  test "should get edit" do
    get edit_skill_component_url(@skill_component)
    assert_response :success
  end

  test "should update skill_component" do
    patch skill_component_url(@skill_component), params: { skill_component: { description: @skill_component.description, name: @skill_component.name } }
    assert_redirected_to skill_component_url(@skill_component)
  end

  test "should destroy skill_component" do
    assert_difference('SkillComponent.count', -1) do
      delete skill_component_url(@skill_component)
    end

    assert_redirected_to skill_components_url
  end
end
