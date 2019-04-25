class Api::V1::MentorshipTypesController < ApplicationController
  before_action :set_api_v1_mentorship_type, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/mentorship_types
  # GET /api/v1/mentorship_types.json
  def index
    @api_v1_mentorship_types = Api::V1::MentorshipType.all
  end

  # GET /api/v1/mentorship_types/1
  # GET /api/v1/mentorship_types/1.json
  def show
  end

  # GET /api/v1/mentorship_types/new
  def new
    @api_v1_mentorship_type = Api::V1::MentorshipType.new
  end

  # GET /api/v1/mentorship_types/1/edit
  def edit
  end

  # POST /api/v1/mentorship_types
  # POST /api/v1/mentorship_types.json
  def create
    @api_v1_mentorship_type = Api::V1::MentorshipType.new(api_v1_mentorship_type_params)

    respond_to do |format|
      if @api_v1_mentorship_type.save
        format.html { redirect_to @api_v1_mentorship_type, notice: 'Mentorship type was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_mentorship_type }
      else
        format.html { render :new }
        format.json { render json: @api_v1_mentorship_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/mentorship_types/1
  # PATCH/PUT /api/v1/mentorship_types/1.json
  def update
    respond_to do |format|
      if @api_v1_mentorship_type.update(api_v1_mentorship_type_params)
        format.html { redirect_to @api_v1_mentorship_type, notice: 'Mentorship type was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_mentorship_type }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_mentorship_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/mentorship_types/1
  # DELETE /api/v1/mentorship_types/1.json
  def destroy
    @api_v1_mentorship_type.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_mentorship_types_url, notice: 'Mentorship type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_mentorship_type
      @api_v1_mentorship_type = Api::V1::MentorshipType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_mentorship_type_params
      params.fetch(:api_v1_mentorship_type, {})
    end
end
