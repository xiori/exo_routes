require 'test_helper'

class ObjetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @objet = objets(:one)
  end

  test "should get index" do
    get objets_url
    assert_response :success
  end

  test "should get new" do
    get new_objet_url
    assert_response :success
  end

  test "should create objet" do
    assert_difference('Objet.count') do
      post objets_url, params: { objet: { content: @objet.content, price: @objet.price, title: @objet.title } }
    end

    assert_redirected_to objet_url(Objet.last)
  end

  test "should show objet" do
    get objet_url(@objet)
    assert_response :success
  end

  test "should get edit" do
    get edit_objet_url(@objet)
    assert_response :success
  end

  test "should update objet" do
    patch objet_url(@objet), params: { objet: { content: @objet.content, price: @objet.price, title: @objet.title } }
    assert_redirected_to objet_url(@objet)
  end

  test "should destroy objet" do
    assert_difference('Objet.count', -1) do
      delete objet_url(@objet)
    end

    assert_redirected_to objets_url
  end
end
