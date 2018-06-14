class DoctorSpecialtiesController < ApplicationController
  before_action :set_doctor_specialty, only: [:show, :edit, :update, :destroy]

  # GET /doctor_specialties
  # GET /doctor_specialties.json
  def index
    @doctor_specialties = DoctorSpecialty.all
  end

  # GET /doctor_specialties/1
  # GET /doctor_specialties/1.json
  def show
  end

  # GET /doctor_specialties/new
  def new
    @doctor_specialty = DoctorSpecialty.new
  end

  # GET /doctor_specialties/1/edit
  def edit
  end

  # POST /doctor_specialties
  # POST /doctor_specialties.json
  def create
    @doctor_specialty = DoctorSpecialty.new(doctor_specialty_params)

    respond_to do |format|
      if @doctor_specialty.save
        format.html { redirect_to @doctor_specialty, notice: 'Doctor specialty was successfully created.' }
        format.json { render :show, status: :created, location: @doctor_specialty }
      else
        format.html { render :new }
        format.json { render json: @doctor_specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctor_specialties/1
  # PATCH/PUT /doctor_specialties/1.json
  def update
    respond_to do |format|
      if @doctor_specialty.update(doctor_specialty_params)
        format.html { redirect_to @doctor_specialty, notice: 'Doctor specialty was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor_specialty }
      else
        format.html { render :edit }
        format.json { render json: @doctor_specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_specialties/1
  # DELETE /doctor_specialties/1.json
  def destroy
    @doctor_specialty.destroy
    respond_to do |format|
      format.html { redirect_to doctor_specialties_url, notice: 'Doctor specialty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_specialty
      @doctor_specialty = DoctorSpecialty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_specialty_params
      params.require(:doctor_specialty).permit(:specialty_id_id)
    end
end
