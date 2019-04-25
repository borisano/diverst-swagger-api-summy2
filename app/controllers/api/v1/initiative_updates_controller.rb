class Api::V1::InitiativeUpdatesController < ApplicationController
  before_action :set_api_v1_initiative_update, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/initiative_updates
  # GET /api/v1/initiative_updates.json
  def index
    @api_v1_initiative_updates = Api::V1::InitiativeUpdate.all
  end

  # GET /api/v1/initiative_updates/1
  # GET /api/v1/initiative_updates/1.json
  def show
  end

  # GET /api/v1/initiative_updates/new
  def new
    @api_v1_initiative_update = Api::V1::InitiativeUpdate.new
  end

  # GET /api/v1/initiative_updates/1/edit
  def edit
  end

  # POST /api/v1/initiative_updates
  # POST /api/v1/initiative_updates.json
  def create
    @api_v1_initiative_update = Api::V1::InitiativeUpdate.new(api_v1_initiative_update_params)

    respond_to do |format|
      if @api_v1_initiative_update.save
        format.html { redirect_to @api_v1_initiative_update, notice: 'Initiative update was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_initiative_update }
      else
        format.html { render :new }
        format.json { render json: @api_v1_initiative_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/initiative_updates/1
  # PATCH/PUT /api/v1/initiative_updates/1.json
  def update
    respond_to do |format|
      if @api_v1_initiative_update.update(api_v1_initiative_update_params)
        format.html { redirect_to @api_v1_initiative_update, notice: 'Initiative update was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_initiative_update }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_initiative_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/initiative_updates/1
  # DELETE /api/v1/initiative_updates/1.json
  def destroy
    @api_v1_initiative_update.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_initiative_updates_url, notice: 'Initiative update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_initiative_update
      @api_v1_initiative_update = Api::V1::InitiativeUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_initiative_update_params
      params.fetch(:api_v1_initiative_update, {})
    end
end
