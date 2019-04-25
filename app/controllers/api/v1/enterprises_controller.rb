class Api::V1::EnterprisesController < ApplicationController
  before_action :set_api_v1_enterprise, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/enterprises
  # GET /api/v1/enterprises.json
  def index
    @api_v1_enterprises = Api::V1::Enterprise.all
  end

  # GET /api/v1/enterprises/1
  # GET /api/v1/enterprises/1.json
  def show
  end

  # GET /api/v1/enterprises/new
  def new
    @api_v1_enterprise = Api::V1::Enterprise.new
  end

  # GET /api/v1/enterprises/1/edit
  def edit
  end

  # POST /api/v1/enterprises
  # POST /api/v1/enterprises.json
  def create
    @api_v1_enterprise = Api::V1::Enterprise.new(api_v1_enterprise_params)

    respond_to do |format|
      if @api_v1_enterprise.save
        format.html { redirect_to @api_v1_enterprise, notice: 'Enterprise was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_enterprise }
      else
        format.html { render :new }
        format.json { render json: @api_v1_enterprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/enterprises/1
  # PATCH/PUT /api/v1/enterprises/1.json
  def update
    respond_to do |format|
      if @api_v1_enterprise.update(api_v1_enterprise_params)
        format.html { redirect_to @api_v1_enterprise, notice: 'Enterprise was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_enterprise }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_enterprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/enterprises/1
  # DELETE /api/v1/enterprises/1.json
  def destroy
    @api_v1_enterprise.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_enterprises_url, notice: 'Enterprise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_enterprise
      @api_v1_enterprise = Api::V1::Enterprise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_enterprise_params
      params.fetch(:api_v1_enterprise, {})
    end
end
