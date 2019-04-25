class Api::V1::SponsorsController < ApplicationController
  before_action :set_api_v1_sponsor, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/sponsors
  # GET /api/v1/sponsors.json
  def index
    @api_v1_sponsors = Api::V1::Sponsor.all
  end

  # GET /api/v1/sponsors/1
  # GET /api/v1/sponsors/1.json
  def show
  end

  # GET /api/v1/sponsors/new
  def new
    @api_v1_sponsor = Api::V1::Sponsor.new
  end

  # GET /api/v1/sponsors/1/edit
  def edit
  end

  # POST /api/v1/sponsors
  # POST /api/v1/sponsors.json
  def create
    @api_v1_sponsor = Api::V1::Sponsor.new(api_v1_sponsor_params)

    respond_to do |format|
      if @api_v1_sponsor.save
        format.html { redirect_to @api_v1_sponsor, notice: 'Sponsor was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_sponsor }
      else
        format.html { render :new }
        format.json { render json: @api_v1_sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/sponsors/1
  # PATCH/PUT /api/v1/sponsors/1.json
  def update
    respond_to do |format|
      if @api_v1_sponsor.update(api_v1_sponsor_params)
        format.html { redirect_to @api_v1_sponsor, notice: 'Sponsor was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_sponsor }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/sponsors/1
  # DELETE /api/v1/sponsors/1.json
  def destroy
    @api_v1_sponsor.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_sponsors_url, notice: 'Sponsor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_sponsor
      @api_v1_sponsor = Api::V1::Sponsor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_sponsor_params
      params.fetch(:api_v1_sponsor, {})
    end
end
