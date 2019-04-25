class Api::V1::InitiativeParticipatingGroupsController < ApplicationController
  before_action :set_api_v1_initiative_participating_group, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/initiative_participating_groups
  # GET /api/v1/initiative_participating_groups.json
  def index
    @api_v1_initiative_participating_groups = Api::V1::InitiativeParticipatingGroup.all
  end

  # GET /api/v1/initiative_participating_groups/1
  # GET /api/v1/initiative_participating_groups/1.json
  def show
  end

  # GET /api/v1/initiative_participating_groups/new
  def new
    @api_v1_initiative_participating_group = Api::V1::InitiativeParticipatingGroup.new
  end

  # GET /api/v1/initiative_participating_groups/1/edit
  def edit
  end

  # POST /api/v1/initiative_participating_groups
  # POST /api/v1/initiative_participating_groups.json
  def create
    @api_v1_initiative_participating_group = Api::V1::InitiativeParticipatingGroup.new(api_v1_initiative_participating_group_params)

    respond_to do |format|
      if @api_v1_initiative_participating_group.save
        format.html { redirect_to @api_v1_initiative_participating_group, notice: 'Initiative participating group was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_initiative_participating_group }
      else
        format.html { render :new }
        format.json { render json: @api_v1_initiative_participating_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/initiative_participating_groups/1
  # PATCH/PUT /api/v1/initiative_participating_groups/1.json
  def update
    respond_to do |format|
      if @api_v1_initiative_participating_group.update(api_v1_initiative_participating_group_params)
        format.html { redirect_to @api_v1_initiative_participating_group, notice: 'Initiative participating group was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_initiative_participating_group }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_initiative_participating_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/initiative_participating_groups/1
  # DELETE /api/v1/initiative_participating_groups/1.json
  def destroy
    @api_v1_initiative_participating_group.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_initiative_participating_groups_url, notice: 'Initiative participating group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_initiative_participating_group
      @api_v1_initiative_participating_group = Api::V1::InitiativeParticipatingGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_initiative_participating_group_params
      params.fetch(:api_v1_initiative_participating_group, {})
    end
end
