require 'test_helper'

class SteppiesControllerTest < ActionController::TestCase
  setup do
    @steppy = steppies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steppies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create steppy" do
    assert_difference('Steppy.count') do
      post :create, steppy: { ask: @steppy.ask, description: @steppy.description, goal: @steppy.goal, region: @steppy.region, step10: @steppy.step10, step1: @steppy.step1, step2: @steppy.step2, step3: @steppy.step3, step4: @steppy.step4, step5: @steppy.step5, step6: @steppy.step6, step7: @steppy.step7, step8: @steppy.step8, step9: @steppy.step9 }
    end

    assert_redirected_to steppy_path(assigns(:steppy))
  end

  test "should show steppy" do
    get :show, id: @steppy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @steppy
    assert_response :success
  end

  test "should update steppy" do
    put :update, id: @steppy, steppy: { ask: @steppy.ask, description: @steppy.description, goal: @steppy.goal, region: @steppy.region, step10: @steppy.step10, step1: @steppy.step1, step2: @steppy.step2, step3: @steppy.step3, step4: @steppy.step4, step5: @steppy.step5, step6: @steppy.step6, step7: @steppy.step7, step8: @steppy.step8, step9: @steppy.step9 }
    assert_redirected_to steppy_path(assigns(:steppy))
  end

  test "should destroy steppy" do
    assert_difference('Steppy.count', -1) do
      delete :destroy, id: @steppy
    end

    assert_redirected_to steppies_path
  end
end
