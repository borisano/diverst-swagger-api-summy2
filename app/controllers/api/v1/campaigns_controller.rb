class Api::V1::CampaignsController < ApplicationController
  before_action :set_api_v1_campaign, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/campaigns
  # GET /api/v1/campaigns.json
  def index
    @api_v1_campaigns = Api::V1::Campaign.all
  end

  # GET /api/v1/campaigns/1
  # GET /api/v1/campaigns/1.json
  def show
  end

  # GET /api/v1/campaigns/new
  def new
    @api_v1_campaign = Api::V1::Campaign.new
  end

  # GET /api/v1/campaigns/1/edit
  def edit
  end

  # POST /api/v1/campaigns
  # POST /api/v1/campaigns.json
  def create
    @api_v1_campaign = Api::V1::Campaign.new(api_v1_campaign_params)

    respond_to do |format|
      if @api_v1_campaign.save
        format.html { redirect_to @api_v1_campaign, notice: 'Campaign was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_campaign }
      else
        format.html { render :new }
        format.json { render json: @api_v1_campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/campaigns/1
  # PATCH/PUT /api/v1/campaigns/1.json
  def update
    respond_to do |format|
      if @api_v1_campaign.update(api_v1_campaign_params)
        format.html { redirect_to @api_v1_campaign, notice: 'Campaign was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_campaign }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/campaigns/1
  # DELETE /api/v1/campaigns/1.json
  def destroy
    @api_v1_campaign.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_campaigns_url, notice: 'Campaign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_campaign
      @api_v1_campaign = Api::V1::Campaign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_campaign_params
      params.fetch(:api_v1_campaign, {})
    end
end
