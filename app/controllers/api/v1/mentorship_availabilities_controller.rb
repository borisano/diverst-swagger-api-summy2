class Api::V1::MentorshipAvailabilitiesController < ApplicationController
  before_action :set_api_v1_mentorship_availability, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/mentorship_availabilities
  # GET /api/v1/mentorship_availabilities.json
  def index
    @api_v1_mentorship_availabilities = Api::V1::MentorshipAvailability.all
  end

  # GET /api/v1/mentorship_availabilities/1
  # GET /api/v1/mentorship_availabilities/1.json
  def show
  end

  # GET /api/v1/mentorship_availabilities/new
  def new
    @api_v1_mentorship_availability = Api::V1::MentorshipAvailability.new
  end

  # GET /api/v1/mentorship_availabilities/1/edit
  def edit
  end

  # POST /api/v1/mentorship_availabilities
  # POST /api/v1/mentorship_availabilities.json
  def create
    @api_v1_mentorship_availability = Api::V1::MentorshipAvailability.new(api_v1_mentorship_availability_params)

    respond_to do |format|
      if @api_v1_mentorship_availability.save
        format.html { redirect_to @api_v1_mentorship_availability, notice: 'Mentorship availability was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_mentorship_availability }
      else
        format.html { render :new }
        format.json { render json: @api_v1_mentorship_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/mentorship_availabilities/1
  # PATCH/PUT /api/v1/mentorship_availabilities/1.json
  def update
    respond_to do |format|
      if @api_v1_mentorship_availability.update(api_v1_mentorship_availability_params)
        format.html { redirect_to @api_v1_mentorship_availability, notice: 'Mentorship availability was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_mentorship_availability }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_mentorship_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/mentorship_availabilities/1
  # DELETE /api/v1/mentorship_availabilities/1.json
  def destroy
    @api_v1_mentorship_availability.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_mentorship_availabilities_url, notice: 'Mentorship availability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_mentorship_availability
      @api_v1_mentorship_availability = Api::V1::MentorshipAvailability.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_mentorship_availability_params
      params.fetch(:api_v1_mentorship_availability, {})
    end
end
