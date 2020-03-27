require "application_system_test_case"

class DeliveriesTest < ApplicationSystemTestCase
  setup do
    @delivery = deliveries(:one)
  end

  test "visiting the index" do
    visit deliveries_url
    assert_selector "h1", text: "Deliveries"
  end

  test "creating a Delivery" do
    visit deliveries_url
    click_on "New Delivery"

    fill_in "Change amount", with: @delivery.change_amount
    fill_in "Commet", with: @delivery.commet_id
    fill_in "Delivered date", with: @delivery.delivered_date
    fill_in "Delivery", with: @delivery.delivery
    fill_in "Klass", with: @delivery.klass
    fill_in "Klass", with: @delivery.klass_id
    check "Notify" if @delivery.notify
    fill_in "Pack date", with: @delivery.pack_date
    click_on "Create Delivery"

    assert_text "Delivery was successfully created"
    click_on "Back"
  end

  test "updating a Delivery" do
    visit deliveries_url
    click_on "Edit", match: :first

    fill_in "Change amount", with: @delivery.change_amount
    fill_in "Commet", with: @delivery.commet_id
    fill_in "Delivered date", with: @delivery.delivered_date
    fill_in "Delivery", with: @delivery.delivery
    fill_in "Klass", with: @delivery.klass
    fill_in "Klass", with: @delivery.klass_id
    check "Notify" if @delivery.notify
    fill_in "Pack date", with: @delivery.pack_date
    click_on "Update Delivery"

    assert_text "Delivery was successfully updated"
    click_on "Back"
  end

  test "destroying a Delivery" do
    visit deliveries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Delivery was successfully destroyed"
  end
end
