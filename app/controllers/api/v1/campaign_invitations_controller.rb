class Api::V1::CampaignInvitationsController < ApplicationController
  before_action :set_api_v1_campaign_invitation, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/campaign_invitations
  # GET /api/v1/campaign_invitations.json
  def index
    @api_v1_campaign_invitations = Api::V1::CampaignInvitation.all
  end

  # GET /api/v1/campaign_invitations/1
  # GET /api/v1/campaign_invitations/1.json
  def show
  end

  # GET /api/v1/campaign_invitations/new
  def new
    @api_v1_campaign_invitation = Api::V1::CampaignInvitation.new
  end

  # GET /api/v1/campaign_invitations/1/edit
  def edit
  end

  # POST /api/v1/campaign_invitations
  # POST /api/v1/campaign_invitations.json
  def create
    @api_v1_campaign_invitation = Api::V1::CampaignInvitation.new(api_v1_campaign_invitation_params)

    respond_to do |format|
      if @api_v1_campaign_invitation.save
        format.html { redirect_to @api_v1_campaign_invitation, notice: 'Campaign invitation was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_campaign_invitation }
      else
        format.html { render :new }
        format.json { render json: @api_v1_campaign_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/campaign_invitations/1
  # PATCH/PUT /api/v1/campaign_invitations/1.json
  def update
    respond_to do |format|
      if @api_v1_campaign_invitation.update(api_v1_campaign_invitation_params)
        format.html { redirect_to @api_v1_campaign_invitation, notice: 'Campaign invitation was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_campaign_invitation }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_campaign_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/campaign_invitations/1
  # DELETE /api/v1/campaign_invitations/1.json
  def destroy
    @api_v1_campaign_invitation.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_campaign_invitations_url, notice: 'Campaign invitation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_campaign_invitation
      @api_v1_campaign_invitation = Api::V1::CampaignInvitation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_campaign_invitation_params
      params.fetch(:api_v1_campaign_invitation, {})
    end
end
