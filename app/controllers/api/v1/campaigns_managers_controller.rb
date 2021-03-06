class Api::V1::CampaignsManagersController < ApplicationController
  before_action :set_api_v1_campaigns_manager, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/campaigns_managers
  # GET /api/v1/campaigns_managers.json
  def index
    @api_v1_campaigns_managers = Api::V1::CampaignsManager.all
  end

  # GET /api/v1/campaigns_managers/1
  # GET /api/v1/campaigns_managers/1.json
  def show
  end

  # GET /api/v1/campaigns_managers/new
  def new
    @api_v1_campaigns_manager = Api::V1::CampaignsManager.new
  end

  # GET /api/v1/campaigns_managers/1/edit
  def edit
  end

  # POST /api/v1/campaigns_managers
  # POST /api/v1/campaigns_managers.json
  def create
    @api_v1_campaigns_manager = Api::V1::CampaignsManager.new(api_v1_campaigns_manager_params)

    respond_to do |format|
      if @api_v1_campaigns_manager.save
        format.html { redirect_to @api_v1_campaigns_manager, notice: 'Campaigns manager was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_campaigns_manager }
      else
        format.html { render :new }
        format.json { render json: @api_v1_campaigns_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/campaigns_managers/1
  # PATCH/PUT /api/v1/campaigns_managers/1.json
  def update
    respond_to do |format|
      if @api_v1_campaigns_manager.update(api_v1_campaigns_manager_params)
        format.html { redirect_to @api_v1_campaigns_manager, notice: 'Campaigns manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_campaigns_manager }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_campaigns_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/campaigns_managers/1
  # DELETE /api/v1/campaigns_managers/1.json
  def destroy
    @api_v1_campaigns_manager.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_campaigns_managers_url, notice: 'Campaigns manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_campaigns_manager
      @api_v1_campaigns_manager = Api::V1::CampaignsManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_campaigns_manager_params
      params.fetch(:api_v1_campaigns_manager, {})
    end
end
