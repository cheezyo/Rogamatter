require 'test_helper'

class DeliveriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery = deliveries(:one)
  end

  test "should get index" do
    get deliveries_url
    assert_response :success
  end

  test "should get new" do
    get new_delivery_url
    assert_response :success
  end

  test "should create delivery" do
    assert_difference('Delivery.count') do
      post deliveries_url, params: { delivery: { change_amount: @delivery.change_amount, commet_id: @delivery.commet_id, delivered_date: @delivery.delivered_date, delivery: @delivery.delivery, klass: @delivery.klass, klass_id: @delivery.klass_id, notify: @delivery.notify, pack_date: @delivery.pack_date } }
    end

    assert_redirected_to delivery_url(Delivery.last)
  end

  test "should show delivery" do
    get delivery_url(@delivery)
    assert_response :success
  end

  test "should get edit" do
    get edit_delivery_url(@delivery)
    assert_response :success
  end

  test "should update delivery" do
    patch delivery_url(@delivery), params: { delivery: { change_amount: @delivery.change_amount, commet_id: @delivery.commet_id, delivered_date: @delivery.delivered_date, delivery: @delivery.delivery, klass: @delivery.klass, klass_id: @delivery.klass_id, notify: @delivery.notify, pack_date: @delivery.pack_date } }
    assert_redirected_to delivery_url(@delivery)
  end

  test "should destroy delivery" do
    assert_difference('Delivery.count', -1) do
      delete delivery_url(@delivery)
    end

    assert_redirected_to deliveries_url
  end
end
