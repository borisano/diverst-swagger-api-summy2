class Api::V1::InitiativeInviteesController < ApplicationController
  before_action :set_api_v1_initiative_invitee, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/initiative_invitees
  # GET /api/v1/initiative_invitees.json
  def index
    @api_v1_initiative_invitees = Api::V1::InitiativeInvitee.all
  end

  # GET /api/v1/initiative_invitees/1
  # GET /api/v1/initiative_invitees/1.json
  def show
  end

  # GET /api/v1/initiative_invitees/new
  def new
    @api_v1_initiative_invitee = Api::V1::InitiativeInvitee.new
  end

  # GET /api/v1/initiative_invitees/1/edit
  def edit
  end

  # POST /api/v1/initiative_invitees
  # POST /api/v1/initiative_invitees.json
  def create
    @api_v1_initiative_invitee = Api::V1::InitiativeInvitee.new(api_v1_initiative_invitee_params)

    respond_to do |format|
      if @api_v1_initiative_invitee.save
        format.html { redirect_to @api_v1_initiative_invitee, notice: 'Initiative invitee was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_initiative_invitee }
      else
        format.html { render :new }
        format.json { render json: @api_v1_initiative_invitee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/initiative_invitees/1
  # PATCH/PUT /api/v1/initiative_invitees/1.json
  def update
    respond_to do |format|
      if @api_v1_initiative_invitee.update(api_v1_initiative_invitee_params)
        format.html { redirect_to @api_v1_initiative_invitee, notice: 'Initiative invitee was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_initiative_invitee }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_initiative_invitee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/initiative_invitees/1
  # DELETE /api/v1/initiative_invitees/1.json
  def destroy
    @api_v1_initiative_invitee.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_initiative_invitees_url, notice: 'Initiative invitee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_initiative_invitee
      @api_v1_initiative_invitee = Api::V1::InitiativeInvitee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_initiative_invitee_params
      params.fetch(:api_v1_initiative_invitee, {})
    end
end
