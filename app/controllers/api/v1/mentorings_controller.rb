class Api::V1::MentoringsController < ApplicationController
  before_action :set_api_v1_mentoring, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/mentorings
  # GET /api/v1/mentorings.json
  def index
    @api_v1_mentorings = Api::V1::Mentoring.all
  end

  # GET /api/v1/mentorings/1
  # GET /api/v1/mentorings/1.json
  def show
  end

  # GET /api/v1/mentorings/new
  def new
    @api_v1_mentoring = Api::V1::Mentoring.new
  end

  # GET /api/v1/mentorings/1/edit
  def edit
  end

  # POST /api/v1/mentorings
  # POST /api/v1/mentorings.json
  def create
    @api_v1_mentoring = Api::V1::Mentoring.new(api_v1_mentoring_params)

    respond_to do |format|
      if @api_v1_mentoring.save
        format.html { redirect_to @api_v1_mentoring, notice: 'Mentoring was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_mentoring }
      else
        format.html { render :new }
        format.json { render json: @api_v1_mentoring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/mentorings/1
  # PATCH/PUT /api/v1/mentorings/1.json
  def update
    respond_to do |format|
      if @api_v1_mentoring.update(api_v1_mentoring_params)
        format.html { redirect_to @api_v1_mentoring, notice: 'Mentoring was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_mentoring }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_mentoring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/mentorings/1
  # DELETE /api/v1/mentorings/1.json
  def destroy
    @api_v1_mentoring.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_mentorings_url, notice: 'Mentoring was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_mentoring
      @api_v1_mentoring = Api::V1::Mentoring.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_mentoring_params
      params.fetch(:api_v1_mentoring, {})
    end
end
