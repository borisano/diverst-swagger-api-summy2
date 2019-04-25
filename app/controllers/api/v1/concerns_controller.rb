class Api::V1::ConcernsController < ApplicationController
  before_action :set_api_v1_concern, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/concerns
  # GET /api/v1/concerns.json
  def index
    @api_v1_concerns = Api::V1::Concern.all
  end

  # GET /api/v1/concerns/1
  # GET /api/v1/concerns/1.json
  def show
  end

  # GET /api/v1/concerns/new
  def new
    @api_v1_concern = Api::V1::Concern.new
  end

  # GET /api/v1/concerns/1/edit
  def edit
  end

  # POST /api/v1/concerns
  # POST /api/v1/concerns.json
  def create
    @api_v1_concern = Api::V1::Concern.new(api_v1_concern_params)

    respond_to do |format|
      if @api_v1_concern.save
        format.html { redirect_to @api_v1_concern, notice: 'Concern was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_concern }
      else
        format.html { render :new }
        format.json { render json: @api_v1_concern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/concerns/1
  # PATCH/PUT /api/v1/concerns/1.json
  def update
    respond_to do |format|
      if @api_v1_concern.update(api_v1_concern_params)
        format.html { redirect_to @api_v1_concern, notice: 'Concern was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_concern }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_concern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/concerns/1
  # DELETE /api/v1/concerns/1.json
  def destroy
    @api_v1_concern.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_concerns_url, notice: 'Concern was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_concern
      @api_v1_concern = Api::V1::Concern.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_concern_params
      params.fetch(:api_v1_concern, {})
    end
end
