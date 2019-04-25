class Api::V1::BadgesController < ApplicationController
  before_action :set_api_v1_badge, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/badges
  # GET /api/v1/badges.json
  def index
    @api_v1_badges = Api::V1::Badge.all
  end

  # GET /api/v1/badges/1
  # GET /api/v1/badges/1.json
  def show
  end

  # GET /api/v1/badges/new
  def new
    @api_v1_badge = Api::V1::Badge.new
  end

  # GET /api/v1/badges/1/edit
  def edit
  end

  # POST /api/v1/badges
  # POST /api/v1/badges.json
  def create
    @api_v1_badge = Api::V1::Badge.new(api_v1_badge_params)

    respond_to do |format|
      if @api_v1_badge.save
        format.html { redirect_to @api_v1_badge, notice: 'Badge was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_badge }
      else
        format.html { render :new }
        format.json { render json: @api_v1_badge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/badges/1
  # PATCH/PUT /api/v1/badges/1.json
  def update
    respond_to do |format|
      if @api_v1_badge.update(api_v1_badge_params)
        format.html { redirect_to @api_v1_badge, notice: 'Badge was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_badge }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_badge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/badges/1
  # DELETE /api/v1/badges/1.json
  def destroy
    @api_v1_badge.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_badges_url, notice: 'Badge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_badge
      @api_v1_badge = Api::V1::Badge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_badge_params
      params.fetch(:api_v1_badge, {})
    end
end
