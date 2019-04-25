class Api::V1::CampaignsSegmentsController < ApplicationController
  before_action :set_api_v1_campaigns_segment, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/campaigns_segments
  # GET /api/v1/campaigns_segments.json
  def index
    @api_v1_campaigns_segments = Api::V1::CampaignsSegment.all
  end

  # GET /api/v1/campaigns_segments/1
  # GET /api/v1/campaigns_segments/1.json
  def show
  end

  # GET /api/v1/campaigns_segments/new
  def new
    @api_v1_campaigns_segment = Api::V1::CampaignsSegment.new
  end

  # GET /api/v1/campaigns_segments/1/edit
  def edit
  end

  # POST /api/v1/campaigns_segments
  # POST /api/v1/campaigns_segments.json
  def create
    @api_v1_campaigns_segment = Api::V1::CampaignsSegment.new(api_v1_campaigns_segment_params)

    respond_to do |format|
      if @api_v1_campaigns_segment.save
        format.html { redirect_to @api_v1_campaigns_segment, notice: 'Campaigns segment was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_campaigns_segment }
      else
        format.html { render :new }
        format.json { render json: @api_v1_campaigns_segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/campaigns_segments/1
  # PATCH/PUT /api/v1/campaigns_segments/1.json
  def update
    respond_to do |format|
      if @api_v1_campaigns_segment.update(api_v1_campaigns_segment_params)
        format.html { redirect_to @api_v1_campaigns_segment, notice: 'Campaigns segment was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_campaigns_segment }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_campaigns_segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/campaigns_segments/1
  # DELETE /api/v1/campaigns_segments/1.json
  def destroy
    @api_v1_campaigns_segment.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_campaigns_segments_url, notice: 'Campaigns segment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_campaigns_segment
      @api_v1_campaigns_segment = Api::V1::CampaignsSegment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_campaigns_segment_params
      params.fetch(:api_v1_campaigns_segment, {})
    end
end
