require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { birth_date: @profile.birth_date, birth_state: @profile.birth_state, curp: @profile.curp, email: @profile.email, first_last_name: @profile.first_last_name, first_name: @profile.first_name, gender: @profile.gender, image: @profile.image, name: @profile.name, phone_number: @profile.phone_number, provider: @profile.provider, rfc: @profile.rfc, second_last_name: @profile.second_last_name, second_name: @profile.second_name, uid: @profile.uid } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { birth_date: @profile.birth_date, birth_state: @profile.birth_state, curp: @profile.curp, email: @profile.email, first_last_name: @profile.first_last_name, first_name: @profile.first_name, gender: @profile.gender, image: @profile.image, name: @profile.name, phone_number: @profile.phone_number, provider: @profile.provider, rfc: @profile.rfc, second_last_name: @profile.second_last_name, second_name: @profile.second_name, uid: @profile.uid } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
