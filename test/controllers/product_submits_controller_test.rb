require 'test_helper'

class ProductSubmitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_submit = product_submits(:one)
  end

  test "should get index" do
    get product_submits_url
    assert_response :success
  end

  test "should get new" do
    get new_product_submit_url
    assert_response :success
  end

  test "should create product_submit" do
    assert_difference('ProductSubmit.count') do
      post product_submits_url, params: { product_submit: { description: @product_submit.description, email: @product_submit.email, image: @product_submit.image, name: @product_submit.name, product_name: @product_submit.product_name, url: @product_submit.url } }
    end

    assert_redirected_to product_submit_url(ProductSubmit.last)
  end

  test "should show product_submit" do
    get product_submit_url(@product_submit)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_submit_url(@product_submit)
    assert_response :success
  end

  test "should update product_submit" do
    patch product_submit_url(@product_submit), params: { product_submit: { description: @product_submit.description, email: @product_submit.email, image: @product_submit.image, name: @product_submit.name, product_name: @product_submit.product_name, url: @product_submit.url } }
    assert_redirected_to product_submit_url(@product_submit)
  end

  test "should destroy product_submit" do
    assert_difference('ProductSubmit.count', -1) do
      delete product_submit_url(@product_submit)
    end

    assert_redirected_to product_submits_url
  end
end
