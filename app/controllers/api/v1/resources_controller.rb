class Api::V1::ResourcesController < ApplicationController
  before_action :set_api_v1_resource, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/resources
  # GET /api/v1/resources.json
  def index
    @api_v1_resources = Api::V1::Resource.all
  end

  # GET /api/v1/resources/1
  # GET /api/v1/resources/1.json
  def show
  end

  # GET /api/v1/resources/new
  def new
    @api_v1_resource = Api::V1::Resource.new
  end

  # GET /api/v1/resources/1/edit
  def edit
  end

  # POST /api/v1/resources
  # POST /api/v1/resources.json
  def create
    @api_v1_resource = Api::V1::Resource.new(api_v1_resource_params)

    respond_to do |format|
      if @api_v1_resource.save
        format.html { redirect_to @api_v1_resource, notice: 'Resource was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_resource }
      else
        format.html { render :new }
        format.json { render json: @api_v1_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/resources/1
  # PATCH/PUT /api/v1/resources/1.json
  def update
    respond_to do |format|
      if @api_v1_resource.update(api_v1_resource_params)
        format.html { redirect_to @api_v1_resource, notice: 'Resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_resource }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/resources/1
  # DELETE /api/v1/resources/1.json
  def destroy
    @api_v1_resource.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_resources_url, notice: 'Resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_resource
      @api_v1_resource = Api::V1::Resource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_resource_params
      params.fetch(:api_v1_resource, {})
    end
end
