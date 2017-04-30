require 'test_helper'

class AgenciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agency = agencies(:one)
  end

  test "should get index" do
    get agencies_url
    assert_response :success
  end

  test "should get new" do
    get new_agency_url
    assert_response :success
  end

  test "should create agency" do
    assert_difference('Agency.count') do
      post agencies_url, params: { agency: { active: @agency.active, address1: @agency.address1, address2: @agency.address2, address3: @agency.address3, city: @agency.city, name: @agency.name, state: @agency.state, zip: @agency.zip } }
    end

    assert_redirected_to agency_url(Agency.last)
  end

  test "should show agency" do
    get agency_url(@agency)
    assert_response :success
  end

  test "should get edit" do
    get edit_agency_url(@agency)
    assert_response :success
  end

  test "should update agency" do
    patch agency_url(@agency), params: { agency: { active: @agency.active, address1: @agency.address1, address2: @agency.address2, address3: @agency.address3, city: @agency.city, name: @agency.name, state: @agency.state, zip: @agency.zip } }
    assert_redirected_to agency_url(@agency)
  end

  test "should destroy agency" do
    assert_difference('Agency.count', -1) do
      delete agency_url(@agency)
    end

    assert_redirected_to agencies_url
  end
end
