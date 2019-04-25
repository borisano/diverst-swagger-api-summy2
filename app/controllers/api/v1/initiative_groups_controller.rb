class Api::V1::InitiativeGroupsController < ApplicationController
  before_action :set_api_v1_initiative_group, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/initiative_groups
  # GET /api/v1/initiative_groups.json
  def index
    @api_v1_initiative_groups = Api::V1::InitiativeGroup.all
  end

  # GET /api/v1/initiative_groups/1
  # GET /api/v1/initiative_groups/1.json
  def show
  end

  # GET /api/v1/initiative_groups/new
  def new
    @api_v1_initiative_group = Api::V1::InitiativeGroup.new
  end

  # GET /api/v1/initiative_groups/1/edit
  def edit
  end

  # POST /api/v1/initiative_groups
  # POST /api/v1/initiative_groups.json
  def create
    @api_v1_initiative_group = Api::V1::InitiativeGroup.new(api_v1_initiative_group_params)

    respond_to do |format|
      if @api_v1_initiative_group.save
        format.html { redirect_to @api_v1_initiative_group, notice: 'Initiative group was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_initiative_group }
      else
        format.html { render :new }
        format.json { render json: @api_v1_initiative_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/initiative_groups/1
  # PATCH/PUT /api/v1/initiative_groups/1.json
  def update
    respond_to do |format|
      if @api_v1_initiative_group.update(api_v1_initiative_group_params)
        format.html { redirect_to @api_v1_initiative_group, notice: 'Initiative group was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_initiative_group }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_initiative_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/initiative_groups/1
  # DELETE /api/v1/initiative_groups/1.json
  def destroy
    @api_v1_initiative_group.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_initiative_groups_url, notice: 'Initiative group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_initiative_group
      @api_v1_initiative_group = Api::V1::InitiativeGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_initiative_group_params
      params.fetch(:api_v1_initiative_group, {})
    end
end
