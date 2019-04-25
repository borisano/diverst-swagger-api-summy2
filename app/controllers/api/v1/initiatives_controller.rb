class Api::V1::InitiativesController < ApplicationController
  before_action :set_api_v1_initiative, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/initiatives
  # GET /api/v1/initiatives.json
  def index
    @api_v1_initiatives = Api::V1::Initiative.all
  end

  # GET /api/v1/initiatives/1
  # GET /api/v1/initiatives/1.json
  def show
  end

  # GET /api/v1/initiatives/new
  def new
    @api_v1_initiative = Api::V1::Initiative.new
  end

  # GET /api/v1/initiatives/1/edit
  def edit
  end

  # POST /api/v1/initiatives
  # POST /api/v1/initiatives.json
  def create
    @api_v1_initiative = Api::V1::Initiative.new(api_v1_initiative_params)

    respond_to do |format|
      if @api_v1_initiative.save
        format.html { redirect_to @api_v1_initiative, notice: 'Initiative was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_initiative }
      else
        format.html { render :new }
        format.json { render json: @api_v1_initiative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/initiatives/1
  # PATCH/PUT /api/v1/initiatives/1.json
  def update
    respond_to do |format|
      if @api_v1_initiative.update(api_v1_initiative_params)
        format.html { redirect_to @api_v1_initiative, notice: 'Initiative was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_initiative }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_initiative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/initiatives/1
  # DELETE /api/v1/initiatives/1.json
  def destroy
    @api_v1_initiative.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_initiatives_url, notice: 'Initiative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_initiative
      @api_v1_initiative = Api::V1::Initiative.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_initiative_params
      params.fetch(:api_v1_initiative, {})
    end
end
