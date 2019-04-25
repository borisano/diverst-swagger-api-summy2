class Api::V1::GroupsMetricsDashboardsController < ApplicationController
  before_action :set_api_v1_groups_metrics_dashboard, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/groups_metrics_dashboards
  # GET /api/v1/groups_metrics_dashboards.json
  def index
    @api_v1_groups_metrics_dashboards = Api::V1::GroupsMetricsDashboard.all
  end

  # GET /api/v1/groups_metrics_dashboards/1
  # GET /api/v1/groups_metrics_dashboards/1.json
  def show
  end

  # GET /api/v1/groups_metrics_dashboards/new
  def new
    @api_v1_groups_metrics_dashboard = Api::V1::GroupsMetricsDashboard.new
  end

  # GET /api/v1/groups_metrics_dashboards/1/edit
  def edit
  end

  # POST /api/v1/groups_metrics_dashboards
  # POST /api/v1/groups_metrics_dashboards.json
  def create
    @api_v1_groups_metrics_dashboard = Api::V1::GroupsMetricsDashboard.new(api_v1_groups_metrics_dashboard_params)

    respond_to do |format|
      if @api_v1_groups_metrics_dashboard.save
        format.html { redirect_to @api_v1_groups_metrics_dashboard, notice: 'Groups metrics dashboard was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_groups_metrics_dashboard }
      else
        format.html { render :new }
        format.json { render json: @api_v1_groups_metrics_dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/groups_metrics_dashboards/1
  # PATCH/PUT /api/v1/groups_metrics_dashboards/1.json
  def update
    respond_to do |format|
      if @api_v1_groups_metrics_dashboard.update(api_v1_groups_metrics_dashboard_params)
        format.html { redirect_to @api_v1_groups_metrics_dashboard, notice: 'Groups metrics dashboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_groups_metrics_dashboard }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_groups_metrics_dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/groups_metrics_dashboards/1
  # DELETE /api/v1/groups_metrics_dashboards/1.json
  def destroy
    @api_v1_groups_metrics_dashboard.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_groups_metrics_dashboards_url, notice: 'Groups metrics dashboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_groups_metrics_dashboard
      @api_v1_groups_metrics_dashboard = Api::V1::GroupsMetricsDashboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_groups_metrics_dashboard_params
      params.fetch(:api_v1_groups_metrics_dashboard, {})
    end
end
