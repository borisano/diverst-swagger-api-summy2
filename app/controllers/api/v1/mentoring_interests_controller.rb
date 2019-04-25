class Api::V1::MentoringInterestsController < ApplicationController
  before_action :set_api_v1_mentoring_interest, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/mentoring_interests
  # GET /api/v1/mentoring_interests.json
  def index
    @api_v1_mentoring_interests = Api::V1::MentoringInterest.all
  end

  # GET /api/v1/mentoring_interests/1
  # GET /api/v1/mentoring_interests/1.json
  def show
  end

  # GET /api/v1/mentoring_interests/new
  def new
    @api_v1_mentoring_interest = Api::V1::MentoringInterest.new
  end

  # GET /api/v1/mentoring_interests/1/edit
  def edit
  end

  # POST /api/v1/mentoring_interests
  # POST /api/v1/mentoring_interests.json
  def create
    @api_v1_mentoring_interest = Api::V1::MentoringInterest.new(api_v1_mentoring_interest_params)

    respond_to do |format|
      if @api_v1_mentoring_interest.save
        format.html { redirect_to @api_v1_mentoring_interest, notice: 'Mentoring interest was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_mentoring_interest }
      else
        format.html { render :new }
        format.json { render json: @api_v1_mentoring_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/mentoring_interests/1
  # PATCH/PUT /api/v1/mentoring_interests/1.json
  def update
    respond_to do |format|
      if @api_v1_mentoring_interest.update(api_v1_mentoring_interest_params)
        format.html { redirect_to @api_v1_mentoring_interest, notice: 'Mentoring interest was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_mentoring_interest }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_mentoring_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/mentoring_interests/1
  # DELETE /api/v1/mentoring_interests/1.json
  def destroy
    @api_v1_mentoring_interest.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_mentoring_interests_url, notice: 'Mentoring interest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_mentoring_interest
      @api_v1_mentoring_interest = Api::V1::MentoringInterest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_mentoring_interest_params
      params.fetch(:api_v1_mentoring_interest, {})
    end
end
