require 'test_helper'

class DoctorSpecialtiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doctor_specialty = doctor_specialties(:one)
  end

  test "should get index" do
    get doctor_specialties_url
    assert_response :success
  end

  test "should get new" do
    get new_doctor_specialty_url
    assert_response :success
  end

  test "should create doctor_specialty" do
    assert_difference('DoctorSpecialty.count') do
      post doctor_specialties_url, params: { doctor_specialty: { specialty_id_id: @doctor_specialty.specialty_id_id } }
    end

    assert_redirected_to doctor_specialty_url(DoctorSpecialty.last)
  end

  test "should show doctor_specialty" do
    get doctor_specialty_url(@doctor_specialty)
    assert_response :success
  end

  test "should get edit" do
    get edit_doctor_specialty_url(@doctor_specialty)
    assert_response :success
  end

  test "should update doctor_specialty" do
    patch doctor_specialty_url(@doctor_specialty), params: { doctor_specialty: { specialty_id_id: @doctor_specialty.specialty_id_id } }
    assert_redirected_to doctor_specialty_url(@doctor_specialty)
  end

  test "should destroy doctor_specialty" do
    assert_difference('DoctorSpecialty.count', -1) do
      delete doctor_specialty_url(@doctor_specialty)
    end

    assert_redirected_to doctor_specialties_url
  end
end
