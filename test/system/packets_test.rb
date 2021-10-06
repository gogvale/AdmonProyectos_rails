require "application_system_test_case"

class PacketsTest < ApplicationSystemTestCase
  setup do
    @packet = packets(:one)
  end

  test "visiting the index" do
    visit packets_url
    assert_selector "h1", text: "Packets"
  end

  test "creating a Packet" do
    visit packets_url
    click_on "New Packet"

    fill_in "Name", with: @packet.name
    fill_in "Status", with: @packet.status
    fill_in "Weight", with: @packet.weight
    click_on "Create Packet"

    assert_text "Packet was successfully created"
    click_on "Back"
  end

  test "updating a Packet" do
    visit packets_url
    click_on "Edit", match: :first

    fill_in "Name", with: @packet.name
    fill_in "Status", with: @packet.status
    fill_in "Weight", with: @packet.weight
    click_on "Update Packet"

    assert_text "Packet was successfully updated"
    click_on "Back"
  end

  test "destroying a Packet" do
    visit packets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Packet was successfully destroyed"
  end
end
