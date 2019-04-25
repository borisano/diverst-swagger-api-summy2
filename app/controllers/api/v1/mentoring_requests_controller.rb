class Api::V1::MentoringRequestsController < ApplicationController
  before_action :set_api_v1_mentoring_request, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/mentoring_requests
  # GET /api/v1/mentoring_requests.json
  def index
    @api_v1_mentoring_requests = Api::V1::MentoringRequest.all
  end

  # GET /api/v1/mentoring_requests/1
  # GET /api/v1/mentoring_requests/1.json
  def show
  end

  # GET /api/v1/mentoring_requests/new
  def new
    @api_v1_mentoring_request = Api::V1::MentoringRequest.new
  end

  # GET /api/v1/mentoring_requests/1/edit
  def edit
  end

  # POST /api/v1/mentoring_requests
  # POST /api/v1/mentoring_requests.json
  def create
    @api_v1_mentoring_request = Api::V1::MentoringRequest.new(api_v1_mentoring_request_params)

    respond_to do |format|
      if @api_v1_mentoring_request.save
        format.html { redirect_to @api_v1_mentoring_request, notice: 'Mentoring request was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_mentoring_request }
      else
        format.html { render :new }
        format.json { render json: @api_v1_mentoring_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/mentoring_requests/1
  # PATCH/PUT /api/v1/mentoring_requests/1.json
  def update
    respond_to do |format|
      if @api_v1_mentoring_request.update(api_v1_mentoring_request_params)
        format.html { redirect_to @api_v1_mentoring_request, notice: 'Mentoring request was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_mentoring_request }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_mentoring_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/mentoring_requests/1
  # DELETE /api/v1/mentoring_requests/1.json
  def destroy
    @api_v1_mentoring_request.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_mentoring_requests_url, notice: 'Mentoring request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_mentoring_request
      @api_v1_mentoring_request = Api::V1::MentoringRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_mentoring_request_params
      params.fetch(:api_v1_mentoring_request, {})
    end
end
