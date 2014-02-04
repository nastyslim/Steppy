require 'test_helper'

class ChecklistsControllerTest < ActionController::TestCase
  setup do
    @checklist = checklists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checklists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create checklist" do
    assert_difference('Checklist.count') do
      post :create, checklist: { chk10: @checklist.chk10, chk1: @checklist.chk1, chk2: @checklist.chk2, chk3: @checklist.chk3, chk4: @checklist.chk4, chk5: @checklist.chk5, chk6: @checklist.chk6, chk7: @checklist.chk7, chk8: @checklist.chk8, chk9: @checklist.chk9 }
    end

    assert_redirected_to checklist_path(assigns(:checklist))
  end

  test "should show checklist" do
    get :show, id: @checklist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @checklist
    assert_response :success
  end

  test "should update checklist" do
    put :update, id: @checklist, checklist: { chk10: @checklist.chk10, chk1: @checklist.chk1, chk2: @checklist.chk2, chk3: @checklist.chk3, chk4: @checklist.chk4, chk5: @checklist.chk5, chk6: @checklist.chk6, chk7: @checklist.chk7, chk8: @checklist.chk8, chk9: @checklist.chk9 }
    assert_redirected_to checklist_path(assigns(:checklist))
  end

  test "should destroy checklist" do
    assert_difference('Checklist.count', -1) do
      delete :destroy, id: @checklist
    end

    assert_redirected_to checklists_path
  end
end
