require 'test_helper'

class PizzaPlacesControllerTest < ActionController::TestCase
  setup do
    @pizza_place = pizza_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pizza_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pizza_place" do
    assert_difference('PizzaPlace.count') do
      post :create, pizza_place: {  }
    end

    assert_redirected_to pizza_place_path(assigns(:pizza_place))
  end

  test "should show pizza_place" do
    get :show, id: @pizza_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pizza_place
    assert_response :success
  end

  test "should update pizza_place" do
    patch :update, id: @pizza_place, pizza_place: {  }
    assert_redirected_to pizza_place_path(assigns(:pizza_place))
  end

  test "should destroy pizza_place" do
    assert_difference('PizzaPlace.count', -1) do
      delete :destroy, id: @pizza_place
    end

    assert_redirected_to pizza_places_path
  end
end
