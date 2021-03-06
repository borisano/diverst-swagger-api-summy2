class Api::V1::InitiativeUsersController < ApplicationController
  before_action :set_api_v1_initiative_user, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/initiative_users
  # GET /api/v1/initiative_users.json
  def index
    @api_v1_initiative_users = Api::V1::InitiativeUser.all
  end

  # GET /api/v1/initiative_users/1
  # GET /api/v1/initiative_users/1.json
  def show
  end

  # GET /api/v1/initiative_users/new
  def new
    @api_v1_initiative_user = Api::V1::InitiativeUser.new
  end

  # GET /api/v1/initiative_users/1/edit
  def edit
  end

  # POST /api/v1/initiative_users
  # POST /api/v1/initiative_users.json
  def create
    @api_v1_initiative_user = Api::V1::InitiativeUser.new(api_v1_initiative_user_params)

    respond_to do |format|
      if @api_v1_initiative_user.save
        format.html { redirect_to @api_v1_initiative_user, notice: 'Initiative user was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_initiative_user }
      else
        format.html { render :new }
        format.json { render json: @api_v1_initiative_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/initiative_users/1
  # PATCH/PUT /api/v1/initiative_users/1.json
  def update
    respond_to do |format|
      if @api_v1_initiative_user.update(api_v1_initiative_user_params)
        format.html { redirect_to @api_v1_initiative_user, notice: 'Initiative user was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_initiative_user }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_initiative_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/initiative_users/1
  # DELETE /api/v1/initiative_users/1.json
  def destroy
    @api_v1_initiative_user.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_initiative_users_url, notice: 'Initiative user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_initiative_user
      @api_v1_initiative_user = Api::V1::InitiativeUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_initiative_user_params
      params.fetch(:api_v1_initiative_user, {})
    end
end
