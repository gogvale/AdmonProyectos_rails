require "test_helper"

class PacketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @packet = packets(:one)
  end

  test "should get index" do
    get packets_url
    assert_response :success
  end

  test "should get new" do
    get new_packet_url
    assert_response :success
  end

  test "should create packet" do
    assert_difference('Packet.count') do
      post packets_url, params: { packet: { name: @packet.name, status: @packet.status, weight: @packet.weight } }
    end

    assert_redirected_to packet_url(Packet.last)
  end

  test "should show packet" do
    get packet_url(@packet)
    assert_response :success
  end

  test "should get edit" do
    get edit_packet_url(@packet)
    assert_response :success
  end

  test "should update packet" do
    patch packet_url(@packet), params: { packet: { name: @packet.name, status: @packet.status, weight: @packet.weight } }
    assert_redirected_to packet_url(@packet)
  end

  test "should destroy packet" do
    assert_difference('Packet.count', -1) do
      delete packet_url(@packet)
    end

    assert_redirected_to packets_url
  end
end
