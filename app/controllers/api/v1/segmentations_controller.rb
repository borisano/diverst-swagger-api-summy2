class Api::V1::SegmentationsController < ApplicationController
  before_action :set_api_v1_segmentation, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/segmentations
  # GET /api/v1/segmentations.json
  def index
    @api_v1_segmentations = Api::V1::Segmentation.all
  end

  # GET /api/v1/segmentations/1
  # GET /api/v1/segmentations/1.json
  def show
  end

  # GET /api/v1/segmentations/new
  def new
    @api_v1_segmentation = Api::V1::Segmentation.new
  end

  # GET /api/v1/segmentations/1/edit
  def edit
  end

  # POST /api/v1/segmentations
  # POST /api/v1/segmentations.json
  def create
    @api_v1_segmentation = Api::V1::Segmentation.new(api_v1_segmentation_params)

    respond_to do |format|
      if @api_v1_segmentation.save
        format.html { redirect_to @api_v1_segmentation, notice: 'Segmentation was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_segmentation }
      else
        format.html { render :new }
        format.json { render json: @api_v1_segmentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/segmentations/1
  # PATCH/PUT /api/v1/segmentations/1.json
  def update
    respond_to do |format|
      if @api_v1_segmentation.update(api_v1_segmentation_params)
        format.html { redirect_to @api_v1_segmentation, notice: 'Segmentation was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_segmentation }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_segmentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/segmentations/1
  # DELETE /api/v1/segmentations/1.json
  def destroy
    @api_v1_segmentation.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_segmentations_url, notice: 'Segmentation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_segmentation
      @api_v1_segmentation = Api::V1::Segmentation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_segmentation_params
      params.fetch(:api_v1_segmentation, {})
    end
end
