require 'test_helper'

class BandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @band = bands(:one)
  end

  test "should get index" do
    get bands_url
    assert_response :success
  end

  test "should get new" do
    get new_band_url
    assert_response :success
  end

  test "should create band" do
    assert_difference('Band.count') do
      post bands_url, params: { band: { best_track: @band.best_track, from_year: @band.from_year, image: @band.image, instruments: @band.instruments, kind: @band.kind, name: @band.name, number_of_shows: @band.number_of_shows, size: @band.size, to_year: @band.to_year } }
    end

    assert_redirected_to band_url(Band.last)
  end

  test "should show band" do
    get band_url(@band)
    assert_response :success
  end

  test "should get edit" do
    get edit_band_url(@band)
    assert_response :success
  end

  test "should update band" do
    patch band_url(@band), params: { band: { best_track: @band.best_track, from_year: @band.from_year, image: @band.image, instruments: @band.instruments, kind: @band.kind, name: @band.name, number_of_shows: @band.number_of_shows, size: @band.size, to_year: @band.to_year } }
    assert_redirected_to band_url(@band)
  end

  test "should destroy band" do
    assert_difference('Band.count', -1) do
      delete band_url(@band)
    end

    assert_redirected_to bands_url
  end
end
