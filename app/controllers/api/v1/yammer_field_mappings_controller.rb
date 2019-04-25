class Api::V1::YammerFieldMappingsController < ApplicationController
  before_action :set_api_v1_yammer_field_mapping, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/yammer_field_mappings
  # GET /api/v1/yammer_field_mappings.json
  def index
    @api_v1_yammer_field_mappings = Api::V1::YammerFieldMapping.all
  end

  # GET /api/v1/yammer_field_mappings/1
  # GET /api/v1/yammer_field_mappings/1.json
  def show
  end

  # GET /api/v1/yammer_field_mappings/new
  def new
    @api_v1_yammer_field_mapping = Api::V1::YammerFieldMapping.new
  end

  # GET /api/v1/yammer_field_mappings/1/edit
  def edit
  end

  # POST /api/v1/yammer_field_mappings
  # POST /api/v1/yammer_field_mappings.json
  def create
    @api_v1_yammer_field_mapping = Api::V1::YammerFieldMapping.new(api_v1_yammer_field_mapping_params)

    respond_to do |format|
      if @api_v1_yammer_field_mapping.save
        format.html { redirect_to @api_v1_yammer_field_mapping, notice: 'Yammer field mapping was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_yammer_field_mapping }
      else
        format.html { render :new }
        format.json { render json: @api_v1_yammer_field_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/yammer_field_mappings/1
  # PATCH/PUT /api/v1/yammer_field_mappings/1.json
  def update
    respond_to do |format|
      if @api_v1_yammer_field_mapping.update(api_v1_yammer_field_mapping_params)
        format.html { redirect_to @api_v1_yammer_field_mapping, notice: 'Yammer field mapping was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_yammer_field_mapping }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_yammer_field_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/yammer_field_mappings/1
  # DELETE /api/v1/yammer_field_mappings/1.json
  def destroy
    @api_v1_yammer_field_mapping.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_yammer_field_mappings_url, notice: 'Yammer field mapping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_yammer_field_mapping
      @api_v1_yammer_field_mapping = Api::V1::YammerFieldMapping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_yammer_field_mapping_params
      params.fetch(:api_v1_yammer_field_mapping, {})
    end
end
